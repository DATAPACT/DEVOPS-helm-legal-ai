# DEVOPS-helm-legal-ai

Helm chart for the Legal AI service deployed on `legalai.dp.assistcloud.net`.

## Deploy

```bash
helm upgrade --install legal-ai legal-ai \
  -n legal-ai \
  -f legal-ai/values.azure.yaml \
  --set image.tag=v1.1.1
```
