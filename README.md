# AtendaHub ISP — Pacote de instalação para o cliente

Este é o **pacote de instalação** do AtendaHub ISP (ConnectHUB) para um único servidor de cliente.
Ele **não inclui o código-fonte** do produto: o backend (Go), o frontend (Vue) e o worker WhatsApp
já vêm **pré-compilados como imagens Docker** em `images/`. O que você precisa é de Docker e deste
repositório.

O conteúdo foi pensado para ser o único artefato entregue ao cliente. Após editar `env/.env`
com os dados dele e rodar `scripts/install.sh`, o stack sobe em loopback:

| Serviço             | Endereço local            |
| ------------------- | ------------------------- |
| Frontend ISP (Vue)  | `http://127.0.0.1:8082`   |
| Backend Go (API)    | `http://127.0.0.1:18081`  |
| PostgreSQL          | `127.0.0.1:55433`         |
| Redis               | `127.0.0.1:56380`         |
| RabbitMQ AMQP       | `127.0.0.1:5673`          |
| RabbitMQ UI         | `http://127.0.0.1:15673`  |

A exposição ao público (HTTPS para `app.cliente.com.br` e `api.cliente.com.br`)
é feita pelo **Nginx/Caddy na própria máquina do cliente**, fazendo proxy_pass
para `127.0.0.1:8082` e `127.0.0.1:18081`. Este pacote não toca nesse edge —
fica a critério do parceiro de TI do cliente.

---

## Estrutura

```text
.
├── compose/
│   ├── docker-compose.yml     # NÃO há build:; somente image: pré-construídas
│   └── nginx/default.conf     # config nginx usada pelo container frontend-isp
├── env/
│   └── .env.example           # copie para .env e preencha
├── db/
│   ├── seed.sql               # schema + dados iniciais (pg_dump atual)
│   └── whatsmeow-migrations/  # 002..008 do whatsmeow-worker
├── images/                    # tarballs gerados pelo export-images.sh
│   ├── backend-go-latest.tar
│   ├── whatsmeow-worker-latest.tar
│   └── frontend-isp-latest.tar
├── scripts/
│   ├── build-images.sh        # ATENDAHUB usa para rebuildar após mudanças
│   ├── export-images.sh       # ATENDAHUB usa para regerar os tarballs
│   └── install.sh             # CLIENTE usa para subir o stack no servidor dele
├── .gitignore
├── LICENSE
└── README.md                  # este arquivo
```

---

## Pré-requisitos no servidor do cliente

- Linux 64 bits (Ubuntu 22.04+, Debian 12+, RHEL 9+ ou similar)
- **Docker Engine 24+** com o plugin `docker compose`
- 4 GB de RAM mínimo (8 GB recomendado) e 20 GB de disco livre
- Portas `80`/`443` livres para o Nginx/Caddy do cliente (este pacote não as ocupa)
- Acesso `sudo` no servidor

Verifique o ambiente:

```bash
docker --version           # esperado 24+
docker compose version     # esperado v2+
sudo docker run --rm hello-world
```

---

## Instalação no servidor (passo a passo)

### 1. Receba o pacote

Por **git clone** (recomendado, pois permite atualizações futuras via `git pull`):

```bash
sudo apt-get update && sudo apt-get install -y git
git clone https://github.com/innovationstudios/atendahub-isp-deploy.git
cd atendahub-isp-deploy
```

Por **tarball** (quando o cliente não tem acesso ao GitHub):

```bash
tar xzf atendahub-isp-1.0.0.tar.gz
cd atendahub-isp-deploy
```

### 2. Edite o `.env`

```bash
cp env/.env.example env/.env
nano env/.env      # ou vim, code, etc.
```

Preencha obrigatoriamente estas chaves — o `install.sh` recusa a instalação se
alguma ainda tiver placeholder `troque-*`:

| Variável                  | Descrição                                                 |
| ------------------------- | --------------------------------------------------------- |
| `PUBLIC_URL`              | URL pública do backend. Ex: `https://api.cliente.com.br`  |
| `FRONTEND_URL`            | URL pública do frontend. Ex: `https://app.cliente.com.br` |
| `DB_NAME`                 | Nome do banco PostgreSQL (ex: `atendahub`)                |
| `DB_USER`                 | Usuário do banco                                          |
| `DB_PASS`                 | Senha forte do banco                                      |
| `RABBITMQ_USER`           | Usuário do RabbitMQ                                       |
| `RABBITMQ_PASS`           | Senha forte do RabbitMQ                                   |
| `JWT_SECRET`              | Segredo JWT do backend (32+ chars aleatórios)             |
| `WHATSMEOW_JWT_SECRET`    | Segredo JWT do whatsmeow-worker (pode ser outro valor)    |
| `WHATSMEOW_API_TOKEN`     | Token de API entre backend e worker                       |

Geradores de secrets:

```bash
openssl rand -hex 32   # gera um secret JWT forte
```

Opcionalmente preencha `META_*` (Meta Cloud API) e `AI_*` (provedor IA
compatível OpenAI). Podem ficar vazios na primeira instalação.

### 3. Suba o stack

```bash
./scripts/install.sh --tag latest
```

O script:

1. valida Docker / `docker compose`;
2. executa `docker load -i images/*.tar` (carrega as três imagens pré-buildadas);
3. valida o `.env` (rejeita placeholders `troque-*`);
4. executa `docker compose up -d`;
5. aguarda `http://127.0.0.1:18081/health` retornar 200.

### 4. Verifique

```bash
docker compose -f compose/docker-compose.yml --env-file env/.env ps
curl -s http://127.0.0.1:18081/health
curl -sI http://127.0.0.1:8082/ | head -n 1
```

### 5. Exponha ao público (Nginx/Caddy externo)

Fora deste pacote, peça ao parceiro de TI do cliente para configurar o
**edge (proxy reverso com TLS)** para os dois domínios:

- `app.cliente.com.br` → `http://127.0.0.1:8082`
- `api.cliente.com.br` → `http://127.0.0.1:18081`

Importante: preserve os upgrades de WebSocket para os paths:

- `api.cliente.com.br/socket.io/*` (Socket.IO do backend Go)
- `api.cliente.com.br/ws`         (WebSocket nativo)

Veja `compose/nginx/default.conf` como referência das regras de proxy.

---

## Manutenção

### Mudou só configuração (.env)

Edite `env/.env` e recrie os containers que dependem da mudança:

```bash
cd compose
docker compose --env-file ../env/.env up -d --force-recreate backend-go whatsmeow-worker
```

### Saiu nova versão (enviada pelo AtendaHub)

Quando o AtendaHub lançar uma nova versão, você receberá novos tarballs em
`images/` (ou uma nova tag no repositório git). Atualize o servidor com:

```bash
cd /caminho/do/atendahub-isp-deploy
git pull --tags                          # ou substitua o tar manualmente

docker load -i images/backend-go-1.2.4.tar
docker load -i images/whatsmeow-worker-1.2.4.tar
docker load -i images/frontend-isp-1.2.4.tar

# atualize a tag no .env (FRONTEND_ISP_IMAGE=atendahub/frontend-isp:1.2.4 etc.)
cd compose
TAG=1.2.4 docker compose --env-file ../env/.env up -d --force-recreate
```

### Backup recomendado (rode periodicamente)

PostgreSQL:

```bash
docker exec atendahub-isp-db-1 \
  pg_dump -U "$DB_USER" -d "$DB_NAME" \
  --clean --if-exists --no-owner --no-privileges \
  > backup_$(date +%F).sql
```

Sessões WhatsApp (volume `whatsmeow_data`):

```bash
docker run --rm \
  -v atendahub-isp_whatsmeow_data:/data \
  -v "$PWD":/backup \
  alpine tar czf /backup/whatsmeow_$(date +%F).tgz -C /data .
```

### Logs e diagnóstico

```bash
docker compose -f compose/docker-compose.yml --env-file env/.env logs -f --tail=200
docker compose -f compose/docker-compose.yml --env-file env/.env ps
docker compose -f compose/docker-compose.yml --env-file env/.env exec backend-go sh
```

---

## Fluxo do parceiro AtendaHub (para nossa equipe de engenharia)

```bash
# No nosso ambiente de build:
./scripts/build-images.sh 1.2.4              # rebuild backend/frontend/worker
./scripts/export-images.sh 1.2.4             # regera images/*.tar
tar czf atendahub-isp-1.2.4.tar.gz .         # envia este pacote ao cliente
# ou: git tag 1.2.4 && git push --tags        # clientes que usam git pull
```

---

## Solução de problemas

**`/health` não responde em 60s.** Veja os logs:

```bash
docker logs atendahub-isp-backend-go-1
docker logs atendahub-isp-db-1
```

**"port already allocated".** Outra stack AtendaHub já usa
55433/56380/5673/15673. Pare-a antes de subir, ou edite
`compose/docker-compose.yml` para portas alternativas e ajuste o
proxy do cliente.

**Frontend carrega mas API retorna 404.** O `frontend-isp` foi compilado com
a `VITE_API_URL` do nosso ambiente. Se o cliente usa um domínio diferente,
peça ao AtendaHub rebuildar a imagem com a URL correta:

```bash
VITE_API_URL=https://api.cliente.com.br \
VITE_BACKEND_URL=https://api.cliente.com.br \
VITE_SOCKET_URL=https://api.cliente.com.br \
VITE_APP_NAME="Nome do Cliente" \
  ./scripts/build-images.sh <nova-tag>
```

**Esqueci a senha do usuário inicial.** A senha inicial é definida nos
seeds do Node (no projeto original `backend/src/database/seeds/`). Para
reset, conecte no PostgreSQL e atualize o hash manualmente, ou peça ao
AtendaHub uma nova imagem de seed.

---

## Suporte

- E-mail: <suporte@atendahub.com.br>
- Telefone: …
- Abertura de chamado: …
