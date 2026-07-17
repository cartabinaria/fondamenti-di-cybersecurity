---
tags:
  - category/note
  - status/finished
  - topic/cybersecurity
date: 25-04-2026 15:41:43
links:
  - "[[lecture-24042026111228|Lecture 24042026111228]]"
---
# CCMP
---
## Introduzione
> Il **CCMP** (**Counter Mode-CBC MAC Protocol**) e' il protocollo volto a sostituire il deprecato [[tkip|TKIP]].

## Funzionamento
Garantisce:
- **integrita'** - utilizza il codice di autenticazione del messaggio basato su [[cbc|CBC]], detto CBC-MAC;
- **confidenzialita'** - utilizza la modalita' operativa [[ctr|CTR]] con [[aes|AES]] per la crittografia.

La stessa chiave AES a 128 bit viene usata sia per l'integrita' che per la confidenzialita'. Lo schema utilizza un _numero di pacchetto_ a 48 bit per costruire un _nonce_ per prevenire _replay attack_.

## Referenze