---
tags:
  - category/note
  - status/finished
  - topic/cybersecurity
date: 17-03-2026 18:02:31
links:
  - "[[lecture-13032026111916|Lecture 13032026111916]]"
---
# Diffie-Hellman
---
## Introduzione
> Il **Diffie-Hellman** e' un sistema di [[crittografia-asimmetrica|crittografia asimmetrica]] piu' efficiente di quello di [[puzzle-di-merkle|Merkle]].

### Radice primitiva
In aritmetica modulare, una radice primitiva e' un numero $a$ modulo $p$ tale che ogni numero $g$ coprimo con $p$ e' congruente a una potenza di $a$ modulo $p$.
In altri termini, se $a$ e' una radice primitiva modulo $p$, allora per ogni $g$ coprimo con $p$ si ha che deve esistere un $k$ tale che
$$a^{k} \equiv g \mod{p}$$

Questo valore $k$ e' chiamato il **logaritmo discreto** di $g$ su base $a$ modulo $p$.

## Protocollo
Il Diffie-Hellman si struttura nei seguenti passi:
- Alice fissa un numero primo $p$ molto grande (circa 2048 bits di lunghezza), e poi un intero $g \in \{2, \cdots, p-2\}$;
- Alice manda a Bob sia $p$ che $g$ in chiaro;
- Alice sceglie un _random secret_ $a \in \{1, \cdots, p-2\}$;
- Bob sceglie un _random secret_ $b \in \{1, \cdots, p-2\}$;
- Alice invia a Bob $g^{a} \mod{p}$;
- Bob invia ad Alice $g^{b} \mod{p}$;
- entrambi computano $g^{ab} \mod{p}$, e quel valore sara' la chiave segreta.

L'attaccante puo' quindi conoscere $p, g, g^{a} \mod{p}, g^{b} \mod{p}$, ma con queste informazioni non potra' mai calcolare in tempo umano $g^{ab} \mod{p}$.

Infatti l'algoritmo piu' veloce per trovare la chiave ha [[complessita-computazionale|complessita']] $\exp(O(n^{\frac{1}{3}}))$.

## Debolezze
Purtroppo, Diffie-Hellman e' vulnerabile ad attacchi di tipo [[man-in-the-middle|MiTM]]:
![[diffie-hellman-mitm.png|1000]]

## Referenze