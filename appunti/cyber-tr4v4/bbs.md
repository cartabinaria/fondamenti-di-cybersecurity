---
tags:
  - category/note
  - status/finished
  - topic/cybersecurity
date: 25-02-2026 12:27:22
links:
  - "[[lecture-23022026091407|Lecture 23022026091407]]"
---
# BBS
---
## Introduzione
> Il **BBS** (**Blum Blum Shub**) e' un [[prng|PRNG]] molto potente, basato sulla _fattorizzazione dei numeri primi_.

## Funzionamento
Scelgo 2 numeri primi $p, q$ molto grandi, tale che $p \equiv q \equiv 3 \mod{4}$. Quindi calcolo $n = pq$. Ora scelgo un numero random $s$ (seed) che sia coprimo a $n$ ($\gcd(s, n) = 1$).

La sequenza di bits $B_{i}$ viene generata attraverso il seguente algoritmo:
```R
X[0] = s^2 mod n;
for i=1 to infinity {
	X[i] = (X[i-1])^2 mod n;
	B[i] = X[i] mod 2;
}
```

## Efficacia
Fondamentalmente, il problema di predire la sequenza diventa computazionalmente equivalente a quello di fattorizzare un numero primo $n$.

E' per questa ragione che BBS rientra nei cosiddetti **CSPRBG**, o **Cryptographically Secure Pseudo-Random Bit Generator**, ossia un generatore che passa il _next-bit test_: presi i primi $k$ bit generati dall'output, non esiste un algoritmo facile (polinomiale) che possa permettere di prevedere con probabilita' maggiore di $0.5$ che il prossimo bit sara' $0$ o $1$.

## Referenze