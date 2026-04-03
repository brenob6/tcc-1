FROM debian:bookworm-slim

ENV DEBIAN_FRONTEND=noninteractive

# Instala pacotes necessários para compilar LaTeX sem ficar caçando .sty
RUN apt-get update && apt-get install -y --no-install-recommends \
		texlive-full \
    ghostscript \
    make \
    ca-certificates \
    && apt-get clean && rm -rf /var/lib/apt/lists/*

WORKDIR /home/latex

