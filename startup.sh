#!/bin/bash
set -e
 
PORT="${PORT:-8000}"

 
python -m streamlit run app.py \
  --server.port="${PORT}" \
  --server.address=0.0.0.0 \
  --server.enableCORS=false \
  --server.enableXsrfProtection=false \
  --server.headless=true \
  --server.enableWebsocketCompression=false
