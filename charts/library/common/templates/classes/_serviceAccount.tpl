{{/*
This template serves as a blueprint for ServiceAccount objects that are created
using the common library.
*/}}
{{- define "fhgr.common.class.serviceAccount" -}}
---
apiVersion: v1
kind: ServiceAccount
metadata:
  name: {{ include "fhgr.common.lib.chart.names.serviceAccountName" . }}
  labels: {{- include "fhgr.common.lib.metadata.allLabels" $ | nindent 4 }}
  {{- with (merge (.Values.serviceAccount.annotations | default dict) (include "fhgr.common.lib.metadata.globalAnnotations" $ | fromYaml)) }}
  annotations: {{- toYaml . | nindent 4 }}
  {{- end }}
{{- end -}}
