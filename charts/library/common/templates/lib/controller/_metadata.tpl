{{- define "fhgr.common.lib.controller.metadata.labels" -}}
  {{-
    $labels := (
      merge
        (.Values.controller.labels | default dict)
        (include "fhgr.common.lib.metadata.allLabels" $ | fromYaml)
    )
  -}}
  {{- with $labels -}}
    {{- toYaml . -}}
  {{- end -}}
{{- end -}}

{{- define "fhgr.common.lib.controller.metadata.annotations" -}}
  {{-
    $annotations := (
      merge
        (.Values.controller.annotations | default dict)
        (include "fhgr.common.lib.metadata.globalAnnotations" $ | fromYaml)
    )
  -}}
  {{- with $annotations -}}
    {{- toYaml . -}}
  {{- end -}}
{{- end -}}
