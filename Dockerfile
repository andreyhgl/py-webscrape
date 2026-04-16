FROM python:3.12-slim

WORKDIR /app

RUN apt-get update && \
  apt-get install -y --no-install-recommends git && \
  rm -rf /var/lib/apt/lists/*

# Copy just requirements first. Docker caches each layer, so if your
# requirements don't change, pip install is skipped on rebuild — only
# the script copy (below) reruns. This is called "layer caching" and
# it makes rebuilds fast.
COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt