---
tags:
  - category/note
  - status/finished
  - topic/cybersecurity
date: 03-03-2026 19:47:46
links:
  - "[[lecture-14112024173206|Lecture 14112024173206]]"
---
# 2DES
---
## Introduzione
> Il **2DES** (**Double DES**) e' un metodo per migliorare la sicurezza di [[des|DES]], che consiste nell'applicare due volte DES in sequenza, con due chiavi diverse.

L'idea e' semplice: cifrare il plaintext $m$ con una chiave $k_{1}$, e poi cifrare di nuovo il risultato con una chiave $k_{2}$ diversa. Quindi:
$$E(k_{1}, E(k_{2}, m))$$
con key-length pari a _112 bits_ (56 bits per chiave).

## Meet-in-the-middle attack
Si potrebbe erroneamente pensare che in questo modo il tempo di attacco sia dell'ordine di $2^{112}$: e invece no!
Questo metodo e' infatti vulnerabile a un attacco chiamato **meet-in-the-middle attack**.

Data la coppia $(m, c)$ si vuole trovare $(k_{1}, k_{2})$ tale che
$$E(k_{1}, E(k_{2}, m)) = c$$

Si nota che
$$E(k_{2}, m) = D(k_{1}, c)$$

Possiamo sfruttare questa uguaglianza:
1. costruiamo una tabella di $2^{56}$ righe con colonne $k_{i}, E(k_{i}, m)$, e poi ordiniamo le righe sulla seconda colonna (per fare [[ricerca-dicotomica|ricerca binaria]]);
2. per ogni $k$ tra le $2^{56}$ verifichiamo che $D(k, c)$ sia nella seconda colonna della tabella precedente --> in tal caso $$E(k_{i}, m) = D(k, c) \implies (k_{i}, k) = (k_{2}, k_{1})$$

Da cio' si evince che il costo dell'attacco consista in:
- $2^{56}\log_{2}(2^{56})$ per costruire e ordinare la tabella;
- $2^{56}\log_{2}(2^{56})$ per cercare nella tabella;

Per cui il costo totale dell'attacco sara':
$$2^{56}\log_{2}(2^{56}) + 2^{56}\log_{2}(2^{56}) < 2^{63}$$

e ovviamente $2^{63} \ll 2^{112}$.

## Referenze