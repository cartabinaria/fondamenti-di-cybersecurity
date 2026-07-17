---
tags:
  - category/note
  - status/finished
  - topic/cybersecurity
date: 08-05-2026 13:51:57
links:
  - "[[lecture-04052026091257|Lecture 04052026091257]]"
---
# Attacco pre-calcolato
---
## Introduzione
> Un **attacco pre-calcolato** a l'[[hash|hash]] di una [[password|password]] consiste nel costruire delle tabelle contenenti una serie di password con i rispettivi valori hash, pre-calcolati.
> Conoscendo l'hash di tutte queste password e' sufficiente trovare una corrispondenza tra questi e il valore di hash vittima (velocizzando il processo magari con una [[ricerca-dicotomica|ricerca binaria]]).

Piccolo problema di trade-off:
- piu' le tabelle sono grandi, piu' si risparmia tempo ma si utilizza piu' spazio;
- meno le tabelle sono grandi, meno si risparmia tempo ma si utilizza meno spazio;

Soluzione? Utilizzare le [[rainbow-table|rainbow tables]].

## Difese
Per difendersi da attacchi pre-calcolati, si usa spesso una tecnica semplice ma efficace: il [[salting|salting]].

## Referenze