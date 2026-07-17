---
tags:
  - category/note
  - status/finished
  - topic/cybersecurity
date: 21-02-2026 15:22:04
links:
  - "[[lecture-20022026112118|Lecture 20022026112118]]"
---
# Cifrario a sostituzione monoalfabetica
---
## Introduzione
> Il **cifrario a sostituzione monoalfabetica** e' un sistema di [[crittografia-simmetrica|crittografia simmetrica]] che fissato $\Sigma$ l'alfabeto (di 26 lettere), definisce lo spazio delle chiavi $K$ come l'insieme di tutte le [[permutazione|permutazioni]] possibili per $\Sigma$.
> Scelta quindi la permutazione $\Pi$, allora la _funzione di cifratura_ sara'
> $$\Pi(x)$$
> mentre la _funzione di decifratura_ sara'
> $$\Pi^{-1}(y)$$

<u>Nota bene</u>: e' sempre possibile invertire $\Pi$, in quanto la permutazione e' una [[funzione-matematica|funzione]] [[funzione-iniettiva|iniettiva]] e [[funzione-suriettiva|suriettiva]], per cui [[funzione-biiettiva|biiettiva]] (invertibile)!

## Efficacia
Lo spazio delle chiavi, se $|\Sigma| = 26$, e'
$$26! \approx 2^{88}$$
, enorme!

Ciononostante, questo cifrario (come [[cifrario-di-cesare|quello di Cesare]]), **preservano le feature del linguaggio nella versione cifrata**: questo li rende **vulnerabili ad attacchi basati sull'analisi delle frequenze**.

L'idea e' che ogni linguaggio, infatti, ha alcune features proprie, come:
- la frequenza di apparizione delle singole lettere;
- la frequenza di apparizione di due o piu' lettere;
- ecc...

## Referenze
- [[cifrario-affine|Cifrario affine]]