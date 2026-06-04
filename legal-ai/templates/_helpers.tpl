{{- define "legal-ai.name" -}}
{{- .Chart.Name }}
{{- end }}

{{- define "legal-ai.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" }}
{{- end }}

{{- define "legal-ai.labels" -}}
app.kubernetes.io/name: {{ include "legal-ai.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
helm.sh/chart: {{ .Chart.Name }}-{{ .Chart.Version }}
{{- end }}
