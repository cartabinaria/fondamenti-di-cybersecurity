---
tags:
  - category/note
  - status/finished
  - topic/cybersecurity
date: 25-02-2026 13:13:32
links:
  - "[[lecture-23022026091407|Lecture 23022026091407]]"
---
# eStream
---
## Introduzione
> **eStream** e' un [[cifrario-di-flusso|cifrario di flusso]] nato come alternativa a [[rc4|RC4]] date le sue [[rc4-debolezze|debolezze]], che utilizza un _nonce_ per consentire che la coppia $(k, r)$ (dove $r$ e' appunto il nonce) non venga mai riutilizzata.
> La funzione di cifratura e' della forma
> $$E(k, m, r) = m \oplus PRNG(k, r)$$
> dove $PRNG$ e' appunto un [[prng|PRNG]].

## Referenze