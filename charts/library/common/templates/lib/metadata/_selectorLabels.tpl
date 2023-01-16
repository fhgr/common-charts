{{/* Selector labels shared across objects */}}
{{- define "fhgr.common.lib.metadata.selectorLabels" -}}
app.kubernetes.io/name: {{ include "fhgr.common.lib.chart.names.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}
