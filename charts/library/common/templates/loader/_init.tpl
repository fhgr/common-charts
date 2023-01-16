{{- define "fhgr.common.loader.init" -}}
  {{- /* Merge the local chart values and the common chart defaults */ -}}
  {{- include "fhgr.common.values.init" . }}
{{- end -}}
