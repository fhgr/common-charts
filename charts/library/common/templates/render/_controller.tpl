{{/*
Renders the controller object required by the chart.
*/}}
{{- define "fhgr.common.render.controller" -}}
  {{- if .Values.controller.enabled -}}
    {{- if eq .Values.controller.type "deployment" -}}
      {{- include "fhgr.common.class.deployment" . | nindent 0 -}}
    {{ else if eq .Values.controller.type "daemonset" -}}
      {{- include "fhgr.common.class.daemonset" . | nindent 0 -}}
    {{ else if eq .Values.controller.type "statefulset"  -}}
      {{- include "fhgr.common.class.statefulset" . | nindent 0 -}}
    {{ else -}}
      {{- fail (printf "Not a valid controller.type (%s)" .Values.controller.type) -}}
    {{- end -}}
  {{- end -}}
{{- end -}}
