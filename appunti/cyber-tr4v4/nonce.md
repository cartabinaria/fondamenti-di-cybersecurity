---
tags:
  - category/note
  - status/finished
  - topic/cybersecurity
date: 08-03-2026 20:51:37
links:
  - "[[lecture-06032026111911|Lecture 06032026111911]]"
---
# Nonce
---
## Introduzione
> Un **nonce** (**number used once**) e' un valore che rientra in uno di questi possibili casi:
> - un _numero random_ generato per essere usato una sola volta, da un [[prng|PRNG]];
> - un _timestamp_;
> - un _numero incrementale_;
> - una _combinazione di timestamp e numero incrementale_ (tale che quest'ultimo riparta da zero ogni volta che il timestamp cambia).

Ogni _nonce_ dev'essere quindi in qualche maniera **unico**, ma **non dev'essere cifrato**! Infatti il suo scopo non e' quello di fornire confidenzialita' (come una chiave), ma di **garantire che ogni messaggio cifrato sia diverso dagli altri, anche se il plaintext e la chiave sono gli stessi**.

## Referenze