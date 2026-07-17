---
tags:
  - category/note
  - status/finished
  - topic/cybersecurity
date: 08-03-2026 19:47:28
links:
  - "[[lecture-06032026111911|Lecture 06032026111911]]"
  - "[[lecture-09032026092159|Lecture 09032026092159]]"
---
# CTR
---
## Introduzione
> Il **CTR** (**Counter**) e' un modo di operare un [[cifrario-di-blocco|cifrario di blocco]], in cui ogni blocco di plaintext viene messo in `XOR` con un contatore cifrato, che viene incrementato ad ogni blocco.

## Schema
![[ctr.png]]

Partendo da un valore iniziale di _counter_, **prestabilito tra sender e receiver, magari usando [[ecb|ECB]]**, per ogni blocco da cifrare uso tale valore come IV (facendolo divenire di fatto un [[nonce|nonce]]) e lo incremento.

Anche in questo caso, come avviene per [[ofb|OFB]], l'ultimo blocco potrebbe essere lungo $u < b$ bits: non faccio padding, ma prendo $MSB_{u}(O_{N})$ (dove $O_{N}$ e' l'output della funzione di cifratura) e ci faccio lo `XOR` con $P_{N}$.

Anche qui, infine, si usa sempre la **funzione di cifratura anche nella rete di decifratura**.

Un dettaglio importante e' la **completa assenza di feedback**.

## Referenze