---
tags:
  - category/note
  - status/finished
  - topic/cybersecurity
date: 25-02-2026 12:36:11
links:
  - "[[lecture-23022026091407|Lecture 23022026091407]]"
  - "[[lecture-27022026111035|Lecture 27022026111035]]"
---
# Cifrario di flusso
---
## Introduzione
> Un **cifrario di flusso** e' un sistema di [[crittografia|crittografia]] solitamente [[crittografia-simmetrica|simmetrica]] che viene utilizzata nei casi di _cifratura di flussi di dati tale che non ci sia delay tra un pacchetto e un altro_.
> E' adatta per esempio a situazioni real-time, sensori per [[iot|IoT]], ecc...

## Idea
L'idea di base e' quella di _rimpiazzare le random keys con pseudorandom keys_, generate da [[prng|PRNG]]. Quindi, dal seed $s$ generiamo pseudorandomicamente una random key lunga $n$ tale che $n \gg s$. Quindi, **se $k$ e' un seed, allora $G(k)$ sara' la chiave che useremo per cifrare il messaggio, lunga quanto il messaggio**!

A quel punto, ottenuta $G(k)$, e' sufficiente fare lo `XOR` tra $G(k)$ ed $m$ per ottenere il messaggio cifrato, e invece lo `XOR` tra $G(k)$ e $c$ per riottenere il plaintext, sullo stile di [[otp|OTP]].

<u>Nota bene</u>: a tal proposito, la differenza sostanziale tra OTP e cifrari di flusso, sta proprio nel fatto che il primo usa una chiave $k$ lunga quanto il messaggio, mentre il secondo usa $k$ solo per generare una chiave $G(k)$ lunga quanto il messaggio, tramite un PRNG.

Il problema a questo punto e' la scelta di $k$, del seed: **dev'essere scelta accuratamente per essere il piu' possibile random, e non dev'essere usata piu' volte**!
![[stream-cipher-basic.png]]

Piu' in generale la struttura di uno _stream cipher_ assume le seguenti sembianze:
![[stream-cipher.png]]

### Perfect secrecy
Purtroppo, per il [[cifrario-sicuro-teorema|teorema dei cifrari sicuri]], i cifrari di flusso non possono avere perfect secrecy, perche' la chiave $k$ viene appositamente scelta piu' corta del messaggio $m$.

Ma la perfect secrecy non e' l'unico modo di definire la sicurezza di un cifrario: **con un giusto PRNG**, infatti, **un cifrario di flusso puo' divenire tanto sicuro quanto un cifrario di blocco, su una lunghezza della chiave comparabile**.

## Tipologie
I principali cifrari di flusso che guarderemo sono:
- [[rc4|RC4]]
- [[estream|eStream]]

## Attacchi
I cifrari di flusso, basati sullo `XOR` (e quindi su OTP), sono vulnerabili ai seguenti attacchi:
- [[two-time-pad-attack|Two-time pad attack]]
- [[no-integrity-attack|No integrity attack]]

## Referenze