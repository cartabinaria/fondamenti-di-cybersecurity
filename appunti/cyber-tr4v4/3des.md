---
tags:
  - category/note
  - status/finished
  - topic/cybersecurity
date: 03-03-2026 19:48:33
links:
  - "[[lecture-02032026091732|Lecture 02032026091732]]"
---
# 3DES
---
## Introduzione
> Il **3DES** (**Triple DES**) e' un cifrario di blocco che utilizza il [[des|DES]] come base, ma applicato tre volte per aumentare la sicurezza.

Con 3DES si fa una cifratura tripla, ma non con 3 encryptions, bensì con 2 encryptions e 1 decryption:
$$E(k_{1}, D(k_{2}, E(k_{3}, m)))$$
con key-length pari a _168 bits_ (56 bits per chiave).

Chiaramente e' il _triplo piu' lento di DES_... inoltre dobbiamo assicurarci di non usare $k_{1} = k_{2} = k_{3}$: altrimenti collasserebbe a DES!

Anche in questo caso e' possibile costruire un attacco simile al **meet-in-the-middle attack**, tuttavia il costo dell'attacco risulterebbe in:
$$2^{56}\log_{2}(2^{56}) + 2^{112}\log_{2}(2^{56}) < 2^{118}$$

che anche se minore di $2^{168}$ (come ci si aspetta), rimane comunque abbastanza alto da rendere 3DES un cifrario ancora sicuro.

## Referenze