---
tags:
  - category/note
  - status/finished
  - topic/cybersecurity
date: 19-04-2026 12:13:07
links:
  - "[[lecture-13042026091404|Lecture 13042026091404]]"
---
# BLP
---
## Introduzione
> Il **BLP** (**Bell-LaPadula**) e' un modello di [[access-control|access control]] di tipo [[mac|MAC]], che si concentra sulla _confidenzialita' dei dati e sull'accesso a informazioni classificate_.

E' un modello formale!

## Funzionamento
Ad ogni soggetto viene assegnata una classe di sicurezza, e queste classi formano una gerarchia.
Per esempio:
1. top secret
2. secret
3. confidential
4. restricted
5. unclassified

L'idea del modello e' la seguente:
- ogni soggetto e ogni oggetto hanno un certo livello di sicurezza;
- **no read up** - un soggetto puo' leggere oggetti a livelli di sicurezza minori o uguali al suo;
- **no write down** - un soggetto puo' scrivere oggetti a livelli di sicurezza pari o maggiori del suo.

Notare come il flusso delle informazioni quindi e' di tipo **WURD**: _Write-Up-Read-Down_.

L'intuizione della sua utilita' e' la seguente: in un sistema militare, un soggetto al livello _confidential_ puo':
- leggere tutto cio' che e' _confidential_, _restricted_ e _unclassified_; ma non leggere cio' che e' _secret_ o _top secret_;
- scrivere tutto cio' che e' _confidential_, _secret_ e _top secret_; ma non scrivere cio' che e' _restricted_ o _unclassified_;

In questo modo al suo livello puo' sia leggere che scrivere; non puo' scrivere informazioni confidential, secret o top secret su oggetti restricted o unclassified; non puo' leggere informazioni secret o top secret.

E' per evitare appunto errori, involontari e volontari, di pubblicazione degli oggetti!

## Referenze
- [[biba|BIBA]]