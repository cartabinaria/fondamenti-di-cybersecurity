---
tags:
  - category/note
  - status/finished
  - topic/cybersecurity
date: 17-03-2026 20:02:24
links:
  - "[[lecture-13032026111916|Lecture 13032026111916]]"
---
# Funzione totiente di Eulero
---
## Introduzione
> La funzione $\Phi(N)$ e' definita come _il numero di interi positivi $x$ minori di $N$ tali per cui $\gcd(x, N) = 1$_, ossia che sono relativamente primi a $N$.

Chiaramente:
- $\Phi(N) = |\mathbb{Z}_{N}^{*}|$
- $\Phi(1) = 1$
- $\Phi(p) = p-1$, dove $p$ e' un numero primo

Eulero ha scoperto che, dati $p$ e $q$ primi
$$\Phi(pq) = \Phi(p) \Phi(q) = (p-1)(q-1)$$

## Teorema
> Per ogni $x$ ed $N$ relativamente primi ($\gcd(x, N) = 1$), vale $$\forall x \in \mathbb{Z}_{N}^{*} \ \ \ x^{\Phi(N)} \equiv 1 \mod{N}$$

## Referenze