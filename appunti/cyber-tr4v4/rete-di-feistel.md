---
tags:
  - category/note
  - status/finished
  - topic/cybersecurity
date: 01-03-2026 20:59:29
links:
  - "[[lecture-27022026111035|Lecture 27022026111035]]"
---
# Rete di Feistel
---
## Introduzione
> Una **rete di Feistel** e' una particolare costruzione di [[cifrario-di-blocco|cifrario di blocco]] che date $d$ [[funzione-matematica|funzioni]] $f_{1}, \cdots, f_{d} : \{0, 1\}^{n} \to \{0, 1\}^{n}$ non necessariamente [[funzione-biiettiva|invertibili]], compone una funzione invertibile
> $$F: \{0, 1\}^{2n} \to \{0, 1\}^{2n}$$

## Rete
La rete segue il seguente schema
![[feistel-network.png]]

dove quindi:
- l'input di $2n$ bits viene diviso all'inizio in 2 sezioni $R_{0}$ e $L_{0}$ di $n$ bits ciascuna;
- per ogni iterazione $i$ da $1$ a $d$ si calcola $R_{i} = f_{i}(R_{i-1}) \oplus L_{i-1}$ e $L_{i} = R_{i-1}$.

E' facile quindi dimostrare a questo punto che la funzione $F$ costruita come la rete di Feistel e' invertibile:
- $R_{i-1} = L_{i}$
- $L_{i-1} = f_{i}(R_{i-1}) \oplus R_{i} = f_{i}(L_{i}) \oplus R_{i}$

![[feistel-network-inverse.png]]

Di conseguenza, la rete di decifratura e' uguale a quella di cifratura, ma con le funzioni $f_{1}, \cdots, f_{d}$ applicate al contrario ($f_{d}, \cdots, f_{1}$) e chiaramente anche le funzioni applicate nel verso opposto (prendono $L_{i}$ e sono messe in `XOR` con $R_{i}$).

## Referenze