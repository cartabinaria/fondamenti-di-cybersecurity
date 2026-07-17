---
tags:
  - category/note
  - status/finished
  - topic/cybersecurity
date: 09-03-2026 12:37:57
links:
  - "[[lecture-09032026092159|Lecture 09032026092159]]"
---
# XTS-AES
---
## Introduzione
> **XTS-AES** e' un modo di operare di un [[cifrario-di-blocco|cifrario di blocco]], approvato nel 2010, molto adatto alla _cifratura dei dispositivi di storage orientati a blocchi_.

L'obiettivo e' quello di cifrare i blocchi di memoria permanente, come quelli negli [[hd|HD]], [[ssd|SSD]], ecc...

## Schema
![[xts-aes.png]]

Si compiono 2 operazioni di cifratura per un singolo blocco di dati, entrambi con [[aes|AES]] e con 2 chiavi diverse.

## Referenze