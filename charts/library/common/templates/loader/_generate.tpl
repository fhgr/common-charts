{{/*
Secondary entrypoint and primary loader for the common chart
*/}}
{{- define "fhgr.common.loader.generate" -}}
  {{- /* Build the templates */ -}}
  {{- include "fhgr.common.render.configmaps" . | nindent 0 -}}
  {{- include "fhgr.common.render.secrets" . | nindent 0 -}}
  {{- include "fhgr.common.render.pvcs" . | nindent 0 -}}
  {{- include "fhgr.common.render.serviceAccount" . | nindent 0 -}}
  {{- include "fhgr.common.render.controller" . | nindent 0 -}}
  {{- include "fhgr.common.render.services" . | nindent 0 -}}
  {{- include "fhgr.common.render.ingresses" . | nindent 0 -}}
  {{- include "fhgr.common.render.serviceMonitors" . | nindent 0 -}}
{{- end -}}
