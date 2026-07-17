---
tags:
  - category/note
  - status/finished
  - topic/cybersecurity
date: 17-03-2026 19:24:56
links:
  - "[[lecture-13032026111916|Lecture 13032026111916]]"
---
# Inverso modulare
---
## Introduzione
> L'**inverso modulare** di un numero $x$ in $\mathbb{Z}_{n}$ e' un elemento $y$ tale che
> $$xy \equiv 1 \mod{n}$$
> In tal caso, $y$ e' l'inverso di $x$ in $\mathbb{Z}_{n}$, e viene denotato come $x^{-1}$.

La relazione puo' anche essere scritta come $xy - kn = 1$ per un qualche $k$.

## Teorema
> $x \in \mathbb{Z}_{n}$ ha un inverso $\iff$ $\gcd(x, n) = 1$.

Si nota che se $\gcd(x, n) = 1$, sappiamo che $\exists a, b$ tali che
$$ax + bn = 1$$
e quindi $ax = 1 - bn$, di conseguenza
$$ax \equiv 1 \mod{n}$$

In altri termini, $a = x^{-1}$ in $\mathbb{Z}_{n}$.


Si definisce da esso l'insieme $\mathbb{Z}_{n}^{*}$ come l'insieme di tutti gli elementi invertibili di $\mathbb{Z}_{n}$, ovvero
$$\mathbb{Z}_{n}^{*} = \{x \in \mathbb{Z}_{n} | \gcd(x, n) = 1\}$$

## Algoritmo
Per i risultati sopra, possiamo allora utilizzare l'[[algoritmo-di-euclide-versione-estesa|algoritmo di Euclide esteso]] per calcolare l'inverso modulare.

Prendiamo per esempio $x = 13$ in $\mathbb{Z}_{28}$. Sappiamo che $\gcd(13, 28) = 1$, per cui esiste $x^{-1}$ in $\mathbb{Z}_{28}$. Lo calcoliamo eseguendo semplicemente l'algoritmo di Euclide esteso:
- prima calcoliamo $\gcd(13, 28)$ (anche se gia' sappiamo essere 1);
- poi facciamo le sostituzioni per ottenere l'inverso di $13$.

Euclide:
- $a = 28, b = 13$
- $28 = 13 * 2 + 2$
- $13 = 2 * 6 + 1$
- $2 = 1 * 2 + 0$

Quindi $\gcd(28, 13) = 1$.

Ora a ritroso prendiamo la penultima equazione e risaliamo con le sostituzioni:
- $1 = 13 - 2*6$
- $1 = 13 - [(28 - 13 * 2) * 6] = 13 - 28*6 + 13*12 = 13*13 - 28*6$

Quindi ecco che
$$13*13 - 28*6 = \gcd(13, 28) = 1$$
di conseguenza, dal risultato di prima
$$13*13 \equiv 1 \mod{28}$$
e quindi $13$ e' l'inverso di $13$.

## Referenze