{{/*
Renders the Ingress objects required by the chart.
*/}}
{{- define "fhgr.common.render.ingresses" -}}
  {{- /* Generate named ingresses as required */ -}}
  {{- range $name, $ingress := .Values.ingress }}
    {{- if $ingress.enabled -}}
      {{- $ingressValues := $ingress -}}

      {{/* set defaults */}}
      {{- if and (not $ingressValues.nameOverride) (ne $name (include "fhgr.common.lib.ingress.primary" $)) -}}
        {{- $_ := set $ingressValues "nameOverride" $name -}}
      {{- end -}}

      {{- $_ := set $ "ObjectValues" (dict "ingress" $ingressValues) -}}
      {{- include "fhgr.common.class.ingress" $ | nindent 0 -}}
    {{- end -}}
  {{- end -}}
{{- end -}}
