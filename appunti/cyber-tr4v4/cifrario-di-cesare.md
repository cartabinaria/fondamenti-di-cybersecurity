---
tags:
  - category/note
  - status/finished
  - topic/cybersecurity
date: 21-02-2026 15:17:55
links:
  - "[[lecture-20022026112118|Lecture 20022026112118]]"
---
# Cifrario di Cesare
---
## Introduzione
> Il **cifrario di Cesare**, anche detto **shift cipher**, e' un sistema di [[crittografia-simmetrica|crittografia simmetrica]] che consiste nello _shiftare_ di $k$ posti ogni lettera dell'alfabeto, e di usare $k$ come chiave.
> In particolare, se $\{A, \cdots, Z\}$ e' l'alfabeto, e $K = \{0, \cdots, 25\}$ e' lo spazio delle chiavi, allora presa una chiave $k \in K$ si definisce la _funzione di cifratura_ come
> $$e_{k}(p) = p + k \mod{26}$$
> e la _funzione di decifratura_ come
> $$d_{k}(c) = c - k \mod{26}$$

## Efficacia
Lo spazio delle chiavi e' grande 26: **con un semplice attacco [[attacco-bruteforce|bruteforce]] l'attaccante puo' crackare la chiave e leggere il messaggio**.

## Referenze