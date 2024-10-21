{{/*
Create chart name and version as used by the chart label.
*/}}
{{- define "app-service.chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Common labels
*/}}
{{- define "app-service.labels" -}}
helm.sh/chart: {{ include "app-service.chart" . }}
{{- end }}
