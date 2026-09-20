[![Build & Deploy Docker Container](https://github.com/andreyhgl/py-webscrape/actions/workflows/deploy.yml/badge.svg)](https://github.com/andreyhgl/py-webscrape/actions/workflows/deploy.yml)

A minimal python Docker container for scraping the web

> [!NOTE]
> Every push to `main` automatically builds and pushes the image to GitHub Container Registry. Tagged releases (e.g. `v1.0.0`) produce versioned image tags.

<details>
  <summary>Included tools</summary>

	+ git
	+ Beautifulsoup4
	+ matplotlib
	+ numpy
	+ pandas
	+ seaborn
	+ urllib3
	+ requests
	+ pytest
</details>


## Pull from GitHub Container Registry

```bash
docker pull ghcr.io/andreyhgl/py-webscrape:latest
```

## Run interactively

```bash
docker run -it --rm -v $(pwd):/app \
	-w /app ghcr.io/andreyhgl/py-webscrape python script.py
```

## Build locally

```bash
git clone https://github.com/andreyhgl/py-webscrape.git
cd py-webscrape
docker build -t py-webscrape .
```