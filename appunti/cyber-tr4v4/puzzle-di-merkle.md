---
tags:
  - category/note
  - status/finished
  - topic/cybersecurity
date: 17-03-2026 17:46:10
links:
  - "[[lecture-13032026111916|Lecture 13032026111916]]"
---
# Puzzle di Merkle
---
## Introduzione
> I **puzzles di Merkle** sono un sistema di [[crittografia-asimmetrica|crittografia asimmetrica]] teorico, _estremamente inefficiente_, che consente di _scambiarsi una chiave simmetrica_.

## Puzzle
Considerata una funzione di cifratura $E(k, m)$ con $k \in \{0, 1\}^{128}$, allora definiamo un $\text{puzzle}$ come
$$\text{puzzle} = E(P, m)$$
dove $P = 0^{96} || b_{1} \cdots b_{32}$.

Chiaramente, sapendo che della chiave i primi 96 bit sono uguali a 0, allora per risolvere il puzzle bisogna provare per bruteforce tutte le $2^{32}$ possibili combinazioni di $b_{1} \cdots b_{32}$.

## Costruzione
Se Alice vuole comunicare con Bob, allora costruisce $2^{32}$ puzzle nel seguente modo:
- per ogni puzzle $i \in [1, 2^{32}]$
	- sceglie i bits $b_{1} \cdots b_{32}$ (che chiamiamo $P_{i}$) e un random $x_{i}, k_{i} \in \{0, 1\}^{128}$ tale che $x_{i} \neq k_{i}$
	- a quel punto il puzzle $i$ e' $$\text{puzzle}_{i} = E(0^{96} || P_{i}, m || x_{i} || k_{i})$$

Quindi invia tutti e $2^{32}$ i puzzle a Bob.

Quest'ultimo:
- sceglie un puzzle $j$ (randomicamente)
- lo risolve per bruteforce sui $2^{32}$ bits $P_{j}$
- ottiene $x_{j}, k_{j}$ e $k_{j}$ come chiave condivisa
- invia ad Alice $x_{j}$

Alice allora riceve $x_{j}$ e:
- scorre i $2^{32}$ puzzle per trovare quello corrispondente
- a quel punto usa $k_{j}$ come chiave condivisa

### Costi
Per attore:
- Alice - $O(2^{32})$ (prepara $2^{32}$ puzzles) --> in generale $O(n)$
- Bob - $O(2^{32})$ (risolve solo un puzzle) --> in generale $O(n)$
- Eave - $O(2^{64})$ (risolve $2^{32}$ puzzle!) --> in generale $O(n^{2})$
	- perche' appunto non sa Bob quale puzzle ha scelto

## Referenze