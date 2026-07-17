---
tags:
  - category/note
  - status/finished
  - topic/cybersecurity
date: 25-02-2026 13:18:37
links:
  - "[[lecture-23022026091407|Lecture 23022026091407]]"
---
# Two-time pad attack
---
## Introduzione
> Il **two-time pad attack** e' un [[attacco-informatico|attacco informatico]] ai danni di un [[cifrario-di-flusso|cifrario di flusso]], che si verifica _quando la stessa chiave viene usata per cifrare due messaggi diversi_. In questo caso, infatti, **e' possibile sfruttare la relazione tra i due messaggi cifrati per recuperare informazioni sui messaggi originali**.

## Funzionamento
Immaginiamo di avere
$$c_{1} = m_{1} \oplus PRNG(k)$$
$$c_{2} = m_{2} \oplus PRNG(k)$$

Se l'attaccante sa che la chiave usata per cifrare $m_{1}$ ed $m_{2}$ e' la stessa $k$, allora vale la relazione
$$c_{1} \oplus c_{2} = m_{1} \oplus m_{2}$$

Con questo `XOR`, **posso quindi fare delle analisi statistiche per ricavare $m_{1}$ ed $m_{2}$**.

## Casi reali
Questo attacco e' stato utilizzato per esempio nel [[venona-project|Venona project]].

O peggio, e' possibile sfruttarlo nel protocollo [[wep|WEP]].
![[wep.png]]

Infatti, l'_initialization vector_ con cui si compone il seed per il [[prng|PRNG]] e' lungo solo 24 bits: e' facile che si ripeta lo stesso `IV || k`. Facendo un po' di calcoli, _ogni 16 milioni di frames si ripete_!
E quindi ascoltando frame a sufficienza[^1] e' possibile ricavare la chiave $k$!

Per ovviare a tutto cio', e' necessario **generare una chiave diversa per ogni frame**.

## Referenze

[^1]: si e' visto che ne sono sufficienti solamente 40.000!
