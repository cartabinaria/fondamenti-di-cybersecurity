---
tags:
  - category/note
  - status/finished
  - topic/cybersecurity
date: 01-03-2026 20:51:17
links:
  - "[[lecture-27022026111035|Lecture 27022026111035]]"
  - "[[lecture-06032026111911|Lecture 06032026111911]]"
  - "[[lecture-09032026092159|Lecture 09032026092159]]"
---
# Cifrario di blocco
---
## Introduzione
> Un **cifrario di blocco** e' un sistema di [[crittografia|crittografia]] solitamente [[crittografia-simmetrica|simmetrica]] che cifra un blocco di testo in chiaro (plaintext) _di dimensione fissa_, producendo un blocco di testo cifrato (ciphertext) della stessa dimensione.

E' l'opposto dei [[cifrario-di-flusso|cifrari di flusso]], in cui invece si cifra appunto un flusso di dati.

## Tipologie
I 2 cifrari piu' noti sono:
- [[des|DES]]
- [[aes|AES]]

## Schema
Lo schema e':
![[cifrario-di-blocco.png]]
dove $(E, D)$ e' il cifrario di blocco.

Per esempio:
- DES - $n = 64$ bits, $k = 56$ bits
- 3DES - $n = 64$ bits, $k = 168$ bits
- AES - $n = 128$ bits, $k = 128, 192, 256$ bits

## Costruzione
A prescindere dal tipo di cifrario specifico, i cifrari a blocchi **si costruiscono per iterazione**:
1. dalla chiave $k$ vengono generate $l$ sottochiavi $k_{1}, \cdots, k_{l}$ attraverso un processo di _espansione_;
2. per ogni iterazione $i$ utilizzo una sottochiave $k_{i}$ con cui applicare una funzione di round $R(k_{i}, m_{i})$, che genera $m_{i+1}$;

![[cifrario-di-blocco-costruzione.png]]

Per esempio:
- DES - $l=16$;
- 3DES - $l=48$;
- AES-128 - $l=10$ (con una $R$ diversa!).

## Modi di operare
I cifrari di blocco possono essere usati in maniere sostanzialmente diverse, per adattarli a esigenze specifiche, essere piu' flessibili e lavorare su _blocchi di lunghezza variabile_ (per simulare [[cifrario-di-flusso|cifrari di flusso]]):
- [[ecb|ECB]]
- [[cbc|CBC]]
- [[cfb|CFB]]
- [[ofb|OFB]]
- [[ctr|CTR]]

Questi ultimi 3 in particolare, sono usati per **simulare cifrari di flusso**. Infatti pensiamo a un messaggio da inviare che e' di una lunghezza non standard ($\neq 64, 128, \cdots$). In DES o AES l'ultimo blocco inviato doveva contenere dei **bit di padding**. Usando questi modi di operazione possiamo evitare di dover fare padding, e possiamo cifrare messaggi di qualsiasi lunghezza: **fanno cifratura di 1 byte alla volta, proprio come i cifrari di flusso**.

Esiste inoltre [[xts-aes|XTS-AES]].

## Referenze