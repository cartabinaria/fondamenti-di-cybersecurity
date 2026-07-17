---
tags:
  - category/note
  - status/finished
  - topic/cybersecurity
date: 19-04-2026 11:40:36
links:
  - "[[lecture-13042026091404|Lecture 13042026091404]]"
---
# DAC
---
## Introduzione
> La **DAC** (**Discretionary Access Control**) e' una politica di [[access-control|access control]] basata sull'identita' dei soggetti e su regole di accesso che stabiliscono cosa questi possono e non possono fare su certi oggetti.

Si chiama _discrezionale_ proprio perche' i soggetti decidono di concedere o negare l'accesso ad altri soggetti su certi oggetti.

## Implementazione
Di solito, l'implementazione standard per DAC e' quella della **matrice di accesso**:
![[matrice-di-accesso.png]]

I difetti sono chiari sin da subito: _la dimensione della matrice puo' diventare molto grande_, aumentando i costi in termini di tempo e spazio.

## Referenze