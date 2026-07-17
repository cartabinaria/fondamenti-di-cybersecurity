---
tags:
  - category/note
  - status/finished
  - topic/cybersecurity
date: 21-02-2026 15:40:46
links:
  - "[[lecture-20022026112118|Lecture 20022026112118]]"
---
# Cifrario di Vigenere
---
## Introduzione
> Il **cifrario di Vigenere**, o **cifrario a sostituzione polialfabetica**, e' un sistema di [[crittografia-simmetrica|crittografia simmetrica]] che definisce una chiave $K$ composta da piu' sottochiavi $(k_{1}, \cdots, k_{m})$.
> La _funzione di cifratura_ viene allora definita come
> $$e_{k}(p_{1}, \cdots, p_{m}) = (p_{1} + k_{1}, \cdots, p_{m} + k_{m}) \mod{26}$$
> mentre la _funzione di decifratura_ come
> $$d_{k}(c_{1}, \cdots, c_{m}) = (c_{1} - k_{1}, \cdots, c_{m} - k_{m}) \mod{26}$$
> tenendo conto del fatto che il messaggio da cifrare/decifrare viene suddiviso in chunk di lunghezza $m$ (come la chiave).

## Efficacia
Lo studio dell'analisi delle frequenze e' **meno efficace nei confronti di questa cifratura, perche' una stessa lettera puo' essere mappata in caratteri diversi a seconda della sua posizione rispetto alla chiave**.

Tuttavia, **se si scopre il valore di $m$, allora posso vedere il cifrario come una collezione di shift ciphers, sui posso fare analisi delle frequenze**.

Ci sono tecniche, come il [[test-di-kasiski|test di Kasiski]], che permettono di scoprire questo $m$.

## Referenze