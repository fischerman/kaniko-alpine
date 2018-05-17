FROM gcr.io/kaniko-project/executor@sha256:dae66b504b8c8252c02e084383a42c00e8fff1d38120c0b789cf27e9ab0864fa as kaniko

FROM alpine
COPY --from=kaniko /kaniko /kaniko

# COPY envs from original images
ENV HOME=/root USER=/root SSL_CERT_DIR=/kaniko/ssl/certs