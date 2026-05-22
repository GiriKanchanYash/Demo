# procurespendiq
ProcureSpendIQ - Procurement Analytics Dashboard

## Azure Web App deployment

1. **Startup command** (Configuration → General settings): `bash startup.sh`
2. **Enable WebSockets** (Configuration → General settings → Web sockets: **On**). Streamlit requires WebSockets; without this you may see `Bad message format` / `SessionInfo before it was initialized`.
3. Set application settings (Fabric SQL, Azure OpenAI, etc.) in **Configuration → Application settings** — do not commit `.env` to git.
4. Free tier can be slow on cold start; if the app exits with code **137**, upgrade the App Service plan (out of memory).

After deploying, restart the Web App once so the new Streamlit version and startup command apply.
