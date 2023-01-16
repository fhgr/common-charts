{{/*
Renders the serviceAccount object required by the chart.
*/}}
{{- define "fhgr.common.render.serviceAccount" -}}
  {{- if .Values.serviceAccount.create -}}
    {{- include "fhgr.common.class.serviceAccount" $ | nindent 0 -}}
  {{- end -}}
{{- end -}}
