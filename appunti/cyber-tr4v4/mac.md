---
tags:
  - category/note
  - status/finished
  - topic/cybersecurity
date: 19-04-2026 11:44:06
links:
  - "[[lecture-13042026091404|Lecture 13042026091404]]"
---
# MAC
---
## Introduzione
> La **MAC** (**Mandatory Access Control**) e' una politica di [[access-control|access control]] basata sul confronto di _security labels_ (sensibilita' degli oggetti) con _security clearances_ (nulla osta dei soggetti).

E' _mandatory_ perche' le _security labels_ e le _security clearances_ sono impostati dal sistema e non modificabili dai soggetti, a differenza di quanto avviene per [[dac|DAC]].

## Implementazione
Fondamentalmente funziona per **livelli di sicurezza**:
- se il soggetto $A$ e' ad un livello piu' _alto_ di un oggetto $a$, allora ci puo' accedere;
- se il soggetto $A$ e' ad un livello piu' _basso_ di un oggetto $a$, allora _non_ ci puo' accedere.

L'approccio implementativo standard e' il modello [[blp|BLP]]. Il suo complementare si chiama invece [[biba|BIBA]].

## Referenze