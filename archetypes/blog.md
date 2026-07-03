---
authors:
tags:
- news
date: '{{ time.Now.Format "2006-01-02" }}'
title: '{{ replace .File.ContentBaseName "-" " " | title }}'
url: '/:year/:month/{{ replace .File.ContentBaseName "." "-" }}'
---
