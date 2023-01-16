{{/*
Main entrypoint for the common library chart. It will render all underlying templates based on the provided values.
*/}}
{{- define "fhgr.common.loader.all" -}}
  {{- /* Generate chart and dependency values */ -}}
  {{- include "fhgr.common.loader.init" . -}}

  {{- /* Generate remaining objects */ -}}
  {{- include "fhgr.common.loader.generate" . -}}
{{- end -}}
