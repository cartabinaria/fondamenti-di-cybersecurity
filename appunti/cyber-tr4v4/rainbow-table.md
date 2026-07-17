---
tags:
  - category/note
  - status/finished
  - topic/cybersecurity
date: 08-05-2026 13:56:09
links:
  - "[[lecture-04052026091257|Lecture 04052026091257]]"
---
# Rainbow table
---
## Introduzione
> Una **rainbow table** e' un tipo di [[attacco-pre-calcolato|attacco pre-calcolato]] su un'[[hash|hash]] di una [[password|password]] che consente di occupare meno spazio a scapito del tempo.

## Funzionamento
Si fonda sulle cosiddette [[hash-chain|hash chains]], e le migliora riducendo la possibilita' di [[collisione-hash|collisioni]].

L'idea e' la seguente: **al posto di usare una funzione di riduzione $R$, se ne usa un'intera famiglia $\{R_{1}, \cdots, R_{k}\}$**. In questo modo una collisione hash puo' avvenire su due catene diverse solo se avviene alla stessa posizione $i$ (si usa $R_{i}$), riducendo drasticamente questa possibilita'.

## Referenze