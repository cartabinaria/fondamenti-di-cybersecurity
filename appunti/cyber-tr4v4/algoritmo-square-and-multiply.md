---
tags:
  - category/note
  - status/finished
  - topic/cybersecurity
date: 17-03-2026 18:41:24
links:
  - "[[lecture-13032026111916|Lecture 13032026111916]]"
---
# Algoritmo square-and-multiply
---
## Introduzione
> L'[[algoritmo|algoritmo]] **square-and-multiply** e' un algoritmo utilizzato per calcolare il risultato di un _esponenziazione_ in [[aritmetica-modulare|aritmetica modulare]], ovvero
> $$x^{c} \mod{n}$$

## Algoritmo
L'algoritmo prende in input $x, c, n$, dove $c$ e' l'esponente scritto in rappresentazione binaria. Calcoliamo allora $l$ come il numero di bit della rappresentazione binaria di $c$, e denotiamo $c_{i}$ come l'$i$-esimo bit della rappresentazione binaria a partire da sinistra (MSB).

```R
square_and_multiply(x, c, n) {
	z=1
	
	for i=l-1 to 0 {
		z = z^2 mod n
		if c[i] == 1 {
			z = z*x mod n
		}
	}
	
	return z
}
```

### Esempio
Se per esempio ci chiediamo quale sia il valore di $11^{7} \mod{13}$, ovvero quale sia il valore effettivo di $11^{7}$ in $\mathbb{Z}_{13}$, procediamo nel seguente modo.

Intanto sappiamo che $c=7$ e' scritto in binario come $111$. Quindi:
1. $i = 2 \implies c[2] = 1 \implies z = 11$;
2. $i = 1 \implies c[1] = 1 \implies z = 5$;
3. $i = 0 \implies c[0] = 1 \implies z = 2$;

E quindi $11^{7} \equiv 2 \mod{13}$.

## Referenze