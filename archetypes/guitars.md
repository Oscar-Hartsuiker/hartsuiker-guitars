---
title: "{{ replace .File.ContentBaseName "-" " " | title }}"
price: "POA"
status: "for-sale"
materials: ""
specs:
  - { label: "Body", value: "" }
  - { label: "Neck", value: "" }
  - { label: "Hardware", value: "" }
  - { label: "Finish", value: "" }
images:
  - /images/{{ .File.ContentBaseName }}/001.webp
---

Your description here.
