---
tags:
  - category/note
  - status/finished
  - topic/cybersecurity
date: 08-03-2026 19:46:33
links:
  - "[[lecture-06032026111911|Lecture 06032026111911]]"
  - "[[lecture-09032026092159|Lecture 09032026092159]]"
---
# OFB
---
## Introduzione
> Il **OFB** (**Output Feedback**) e' un modo di operare un [[cifrario-di-blocco|cifrario di blocco]] simile al [[cfb|CFB]].

## Schema
![[ofb.png]]

A differenza di CFB, il feedback che funge da input $I_{i}$ viene preso dall'output della funzione di cifratura $O_{i-1}$ invece che dal ciphertext $C_{i-1}$. Inoltre, il clumping si fa solo alla fine: l'ultimo blocco avra' $u < b$ bits da trasmettere (se i bits complessivi da inviare non sono un multiplo di $b$), allora **nell'ultimo caso vado a prendere solo $MSB_{u}(O_{N})$** con cui fare lo `XOR` con $P_{N}$. Non faccio quindi padding.

Inoltre, $I_{1}$, a tutti gli effetti il IV, e' un [[nonce|nonce]]: _per questioni di sicurezza l'IV dev'essere unico per ogni operazione di cifratura_.

Un vantaggio dell'OFB e' che **gli errori di bit nella trasmissione non si propagano**. Infatti, il calcolo di $C_{i}$ non dipende da $C_{i-1}$, ma solo dall'output della funzione di cifratura: se c'e' un errore nella trasmissione di $C_{i-1}$, questo non influenzera' il calcolo di $C_{i}$.
In CFB questo problema invece si presenta...

<u>Nota bene</u>: si parte da un nonce e una chiave, e si genera un key stream di 1 byte alla volta... **OFB ha la stessa struttura tipica dei cifrari di flusso**!

## Referenze