---
tags:
  - category/note
  - status/finished
  - topic/cybersecurity
date: 25-02-2026 12:18:35
links:
  - "[[lecture-23022026091407|Lecture 23022026091407]]"
---
# PRNG
---
## Introduzione
> I **PRNG**, o **Pseudo-Random Number Generators**, sono dei [[number-generators|number generators]] che a partire da un _seed_ iniziale iterano un algoritmo deterministico per ottenere in output un flusso di bit pseudorandomici.

## Caratteristiche
I PRNG devono rispettare queste 2 caratteristiche fondamentali:
1. **randomness**
2. **unpredictability**

Per applicazioni [[crittografia|crittografiche]] il _seed_ dev'essere sicuro (non predicibile): tipicamente questo viene generato con un [[trng|TRNG]]!

## Tipi
### Linear congruential generator
Prende come parametri $a, b, p$ dove $a, b$ sono interi e $p$ e' primo, e funziona nel seguente modo:
```R
r[0] = seed;
r[i] = (a * r[i-1] + b) mod p;
print(few bits of r[i]);
i++;
```

Ha buone proprieta' statistiche (_randomness_), ma e' facilmente prevedibile (_poco unpredictable_).

### `gclib` random function
La libreria di [[c|C]] contiene la funzione `random` della forma:
```C
r[i] = (r[i-3] + r[i-31]) % 2^32;
printf(r[i] >> 1);
```

E' notoriamente _crackabile_...

### BBS
Il [[bbs|BBS]] e' il primo e ultimo PRNG interessante che studiamo, che viene utilizzato in applicazioni reali.

## Referenze