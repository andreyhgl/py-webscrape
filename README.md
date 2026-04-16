[![Build & Deploy Docker Container](https://github.com/andreyhgl/py-webscrape/actions/workflows/deploy.yml/badge.svg)](https://github.com/andreyhgl/py-webscrape/actions/workflows/deploy.yml)

A minimal python Docker container to run simple web scraping scripts.

> [!NOTE]
> Every push to `main` automatically builds and pushes the image to GitHub Container Registry. Tagged releases (e.g. `v1.0.0`) produce versioned image tags.

## Included softwares

`beautifulsoup4` and `requests` and some system dependencies.

## Pull from GitHub Container Registry

```bash
docker pull ghcr.io/andreyhgl/py-webscrape
```

## Run interactively

```bash
docker run -it --rm -v $(pwd):/app -w /app ghcr.io/andreyhgl/py-webscrape python webscrape.py
```

## Build locally

```bash
git clone https://github.com/andreyhgl/py-webscrape.git
cd py-webscrape
docker build -t py-webscrape .
```