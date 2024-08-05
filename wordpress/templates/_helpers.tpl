{{- define "wordpress.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "wordpress.fullname" -}}
{{- printf "%s-%s" .Release.Name (include "wordpress.name" .) | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "wordpress.chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "wordpress.labels" -}}
app.kubernetes.io/name: {{ include "wordpress.name" . }}
helm.sh/chart: {{ include "wordpress.chart" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
app: {{ include "wordpress.name" . }}
{{- if .Chart.AppVersion }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
version: {{ .Chart.AppVersion | quote }}
{{- end }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end -}}