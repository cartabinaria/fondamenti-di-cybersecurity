---
tags:
  - category/note
  - status/finished
  - topic/cybersecurity
date: 25-02-2026 11:39:41
links:
  - "[[lecture-23022026091407|Lecture 23022026091407]]"
---
# OTP
---
## Introduzione
> L'**OTP**, **One-Time Pad**, e' un [[cifrario-simmetrico|cifrario simmetrico]] basato sull'[[algebra-di-boole|operatore booleano]] `XOR`.

## Funzionamento
Di base, fissati $K = P = C = \{0, 1\}^{n}$, e presi $k \in K, m \in P, c \in C$, si definiscono
$$E(k, m) = k \oplus m$$
$$D(k, c) = k \oplus c$$

Da notare che effettivamente
$$D(k, c) = k \oplus c = k \oplus E(k, m) = k \oplus (k \oplus m) = k \oplus k \oplus m = m$$
per cui si tratta effettivamente di un cifrario simmetrico.

Di solito **$k$ si usa una sola volta**, ed e' **generata da una [[distribuzione-uniforme-discreta|distribuzione uniforme]] sullo spazio delle chiavi $K$**.

## Efficacia
L'OTP ha:
- _pro_
	- velocissimo --> lo `XOR` e' un'operazione costante nelle CPU;
- _contro_
	- la chiave $k$ dev'essere lunga quanto il messaggio $m$;
	- e' molto difficile generare chiavi $k$ che siano realmente sicure;

Nonostante questo, OTP e' considerato migliore dei cosiddetti cifrari deboli, come [[cifrario-di-vigenere|Vigenere]], [[cifrario-di-cesare|Cesare]], ecc...

## Perfect secrecy
Si dimostra che OTP e' un [[cifrario-sicuro|cifrario sicuro]]!

Notiamo intanto che per la definizione di cifrario sicuro, $\forall m, c$ si ha che
$$\mathbb{P}(E(k, m) = c) = \frac{|\{k \in K : E(k, m) = c\}|}{|K|}$$
per cui, se $\forall m, c \ \ \ |\{k \in K : E(k, m) = c\}| = \text{const}$, allora il cifrario e' sicuro.

E in effetti, per OTP vale proprio che
$$\forall m, c \ \ \ |\{k \in K : E(k, m) = c\}| = 1$$
perche', per $m, c$ fissati esiste una sola chiave $k$ tale che $E(k, m) = c$, per le proprieta' dello `XOR`.

Quindi $\forall m, c$
$$\mathbb{P}(E(k, m) = c) = \frac{1}{|K|}$$

**Qed**.

## Referenze