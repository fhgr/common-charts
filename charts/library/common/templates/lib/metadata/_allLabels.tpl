{{/* Common labels shared across objects */}}
{{- define "fhgr.common.lib.metadata.allLabels" -}}
helm.sh/chart: {{ include "fhgr.common.lib.chart.names.chart" . }}
{{ include "fhgr.common.lib.metadata.selectorLabels" . }}
  {{- if .Chart.AppVersion }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
  {{- end }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{ include "fhgr.common.lib.metadata.globalLabels" . }}
{{- end -}}
