---
tags:
  - category/note
  - status/finished
  - topic/cybersecurity
date: 21-02-2026 15:54:24
links:
  - "[[lecture-20022026112118|Lecture 20022026112118]]"
---
# Cifrario di Hill
---
## Introduzione
> Il **cifrario di Hill** e' un sistema di [[crittografia-simmetrica|crittografia simmetrica]] basato sul calcolo [[matrice|matriciale]]. Sia $m \geq 2$ un intero, e $P = C = (\mathbb{Z}_{26})^{m}$ il nostro plaintext e ciphertext, allora lo spazio delle chiavi e' $K = \{m \times m | \text{matrice invertibile su } \mathbb{Z}_{26}\}$.
> Quindi, fissata una chiave $K$, definiamo la _funzione di cifratura_ come
> $$e_{K}(x) = xK$$
> mentre la _funzione di decifratura_ come
> $$d_{K}(y) = yK^{-1}$$
> considerando tutte le operazioni matriciali in $\mathbb{Z}_{26}$

## Referenze