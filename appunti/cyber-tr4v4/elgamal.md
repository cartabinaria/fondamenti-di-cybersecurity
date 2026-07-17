---
tags:
  - category/note
  - status/finished
  - topic/cybersecurity
date: 09-04-2026 14:25:30
links:
  - "[[lecture-30032026091529|Lecture 30032026091529]]"
---
# ElGamal
---
## Introduzione
Si basa su [[diffie-hellman|Diffie-Hellman]].

I passi sono i seguenti:
- generazione della chiave di Bob
	- sceglie un primo $p$ e una radice primitiva $g$ modulo $p$
	- sceglie un esponente random $a \in [0, p-2]$
	- computa $A = g^{a} \mod{p}$
	- la chiave pubblica e' $(p, g, A)$
	- la chiave privata e' $a$
- quando Alice vuole inviare $m$ a Bob
	- sceglie un esponente random $b \in [0, p-2]$
	- computa $B = g^{b} \mod{p}$
	- computa $c = A^{b}m \mod{p}$
	- manda come ciphertext $(B, c)$
- quando Bob riceve $(B, c)$ da Alice
	- computa $x = p-1-a$
	- computa $m = B^{x}c \mod{p}$

Il problema di ElGamal e' la lunghezza della chiave $(B, c)$, che e' letteralmente il doppio di $m$.
La sua sicurezza deriva dalla difficolta' di calcolare i logaritmi discreti.

## Referenze