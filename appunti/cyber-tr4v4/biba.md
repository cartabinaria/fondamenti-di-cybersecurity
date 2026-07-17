---
tags:
  - category/note
  - status/finished
  - topic/cybersecurity
date: 19-04-2026 12:29:22
links:
  - "[[lecture-13042026091404|Lecture 13042026091404]]"
---
# BIBA
---
## Introduzione
> Il **BIBA** e' un modello di [[access-control|access control]] di tipo [[mac|MAC]], duale al [[blp|BLP]], che si concentra sull'_integrita' dei dati_.

## Funzionamento
Il principio e' il seguente;
- ogni soggetto e oggetto hanno un livello di sicurezza;
- **no write up** - un soggetto puo' scrivere oggetti a livelli di sicurezza minori o uguali al suo;
- **no read down** - un soggetto puo' leggere oggetti a livelli di sicurezza pari o maggiori del suo.

Il flusso delle informazioni e' **WDRU**: _Write-Down-Read-Up_.

Supponiamo di avere i livelli:
1. Capitano
2. Tenente
3. Carabiniere

Un tenente puo':
- leggere documenti per tenenti e capitani;
- scrivere documenti per tenenti e carabinieri.

In poche parole, un tenente _non puo' dare ordini a un suo superiore_!

## Referenze