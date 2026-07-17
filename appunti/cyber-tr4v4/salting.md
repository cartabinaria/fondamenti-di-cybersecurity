---
tags:
  - category/note
  - status/finished
  - topic/cybersecurity
date: 08-05-2026 15:01:12
links:
  - "[[lecture-04052026091257|Lecture 04052026091257]]"
---
# Salting
---
## Introduzione
> Il **salting** e' una tecnica usata per difendere le [[database|basi di dati]] contenenti [[hash|hash]] di [[password|password]] da [[attacco-pre-calcolato|attacco pre-calcolato]].

## Funzionamento
Si **aggiunge alle password di cui salvare l'hash, prima di hasharle, un pezzo di dati random**. Quindi si hasha il risultato, e si salva insieme al pezzo di dati random (appunto il _salt_) in chiaro.

In questo modo, attacchi pre-calcolati sono estremamente meno efficaci! Per esempio le [[rainbow-table|rainbow tables]] dovrebbero tutte essere ricalcolate aggiungendo il sale alle password della colonna di inizio.

## Debolezze
Purtroppo, [[attacco-a-dizionario|attacchi a dizionario]] e [[attacco-bruteforce|attacchi bruteforce]] possono comunque essere performati.

## Referenze
- usa lo stesso principio del [[nonce|nonce]]