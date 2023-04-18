---
{{- $dateBlogBeginning := printf "%s-" (now.Format "2006-01-02") -}}
{{- $baseUrl := replace .TranslationBaseName $dateBlogBeginning "" }}
title: "{{ replace $baseUrl "-" " " | title }}"
author: ""
categories:
- news
date: {{ .Date }}
featuredimage: ""
url: "{{ printf "%s/%s" (now.Format "/2006/01/02") $baseUrl }}"
---
