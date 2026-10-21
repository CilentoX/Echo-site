# Eco — landing page

Landing page do **Eco**, app de mensageria para comunidades (self-hosted). Publicada em [ecoapp.litteris.online](https://ecoapp.litteris.online).

## Estrutura

- `index.html` / `styles.css` — site estático (sem build), identidade Eco (paleta B, Space Grotesk + Inter).
- `Dockerfile` — `nginx:alpine` copiando os dois arquivos.
- `docker-compose.yml` — serviço `web` na rede externa `coolify` com labels Traefik para o domínio `ecoapp.litteris.online` (TLS termina na Cloudflare; wildcard tunnel `*.litteris.online` → host:80 → coolify-proxy).

## Deploy (Coolify)

O app é gerenciado no Coolify como **Docker Compose** a partir deste repositório:

1. New Resource → Docker Compose → este repo, branch `main`.
2. Deploy. O Traefik do Coolify roteia pelo Host header já configurado nos labels.

## Atualizar conteúdo

Editar `index.html`/`styles.css` → commit → push → redeploy no Coolify (ou aguardar webhook).

## Roadmap de conteúdo

- [ ] Trocar prévas CSS por screenshots reais quando o app estiver pronto
- [ ] Apontar botão de download para `/download/…` quando o instalador NSIS sair (Task 11/12 do app)
- [ ] `latest.json` + artefatos do instalador para auto-update do Tauri
