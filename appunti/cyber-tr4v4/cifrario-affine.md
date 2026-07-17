---
tags:
  - category/note
  - status/finished
  - topic/cybersecurity
date: 21-02-2026 15:29:03
links:
  - "[[lecture-20022026112118|Lecture 20022026112118]]"
---
# Cifrario affine
---
## Introduzione
> Il **cifrario affine** e' un sistema di [[crittografia-simmetrica|crittografia simmetrica]] derivante dal [[cifrario-a-sostituzione-monoalfabetica|cifrario a sostituzione monoalfabetica]], e a tutti gli effetti una generalizzazione del [[cifrario-di-cesare|cifrario di Cesare]].
> La sua funzione di cifratura e'
> $$e(x) = ax + b \mod{26}$$
> con $a, b \in \mathbb{Z}_{26}$ (la chiave $k$ e' proprio la coppia $(a, b)$).

Si nota che chiaramente, se $a = 1$, allora il cifrario collassa in quello di Cesare (shift cipher).

## Funzione di decifratura
E' importante notare, che a differenza pero' del cifrario di Cesare, in questo caso **non e' sempre possibile definire una funzione di decifratura**.

Una funzione di decifratura valida deve ovviamente essere in primis una [[funzione-matematica|funzione]], e quindi **non ambigua**. Affinche' questo avvenga, la **funzione di cifratura dev'essere [[funzione-biiettiva|invertibile]]**!

La funzione $e$ e' per forza suriettiva: per l'invertibilita' **manca solo la sua iniettivita**'. In altri termini, si vuole che la [[congruenza|congruenza]] $ax + b \equiv y \mod{26}$ **abbia un'unica soluzione per $x$**.

Possiamo non considerare la $b$ perche' al suo variare la congruenza non cambia. Allora ci chiediamo quando $ax \equiv y \mod{26}$ abbia un'unica soluzione per ogni $y$.

C'e' un teorema che afferma che:
> La congruenza $ax \equiv y \mod{m}$ ha un'unica soluzione $x \in \mathbb{Z}_{m}$ per ogni $y \in \mathbb{Z}_{m}$ $\iff$ $\gcd(a, m) = 1$.

In altri termini, visto che $m = 26$ nel nostro caso, **affinche' la funzione di cifratura abbia una corrispondente valida funzione di decifratura, si vuole che $\gcd(a, 26) = 1$**, ovvero che $a$ e $26$ siano coprimi.

### Calcolo
Una volta che sappiamo della sua esistenza, ci chiediamo pero' come calcolarla...

## Referenze