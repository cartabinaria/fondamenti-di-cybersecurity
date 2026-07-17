---
tags:
  - category/note
  - status/finished
  - topic/cybersecurity
date: 03-03-2026 19:58:02
links:
  - "[[lecture-02032026091732|Lecture 02032026091732]]"
---
# AES
---
## Introduzione
> L'**AES** (**Advanced Encryption Standard**) e' un [[cifrario-di-blocco|cifrario di blocco]] che e' stato progettato per sostituire [[des|DES]].

A differenza di DES, non usa [[rete-di-feistel|reti di Feistel]], e i blocchi sono abbastanza complessi. E' stata progettata con lo scopo di essere efficiente sia in software che in hardware. Lavora sempre in modo iterativo.

La chiave potrebbe essere lunga:
- 128 bits - numero di iterazioni pari a 10
- 192 bits - numero di iterazioni pari a 12
- 256 bits - numero di iterazioni pari a 14

## Funzionamento
Sulla base del tipo di AES (128, 192, 256), tenere conto dei seguenti parametri:
![[aes-parametri.png|535]]

### Key scheduling
Corrisponde alla fase di key expansion di DES: vengono generate 44, 52 o 60 sottochiavi (a seconda della lunghezza della chiave), ognuna di 32 bits.

### Rete di sostituzione-permutazione
AES e' una rete di sostituzione-permutazione, in cui i dati vengono prima sostituiti e poi permutati:
![[aes-substitution-permutation-network.png]]

che puo' anche essere vista come:
![[aes-network.png|554]]

### Round
Ogni round si compone di:
- **SubBytes**, in cui ogni byte del blocco viene sostituito da un altro byte secondo una matrice di sostituzione (S-box);
- **ShiftRows**, in cui le righe del blocco vengono shiftate di un certo numero di posizioni (la prima riga non viene shiftata, le ultime 3 vengono shiftate);
- **MixColumns**, in cui le colonne del blocco vengono mescolate tra loro attraverso operazioni di moltiplicazione e somma in un _[[campo|campo]] finito_ detto [[campo-di-galois|campo di Galois]];
- **AddRoundKey**, in cui il blocco viene messo in `XOR` con una sottochiave generata dalla fase di key scheduling;

![[aes-round.png|797]]

## Attacchi
Gli attacchi su AES possono essere:
- un attacco che e' 4 volte migliore di un attacco brute-force, ma comunque infattibile;
- _related key attacks_ su AES-256;

## Referenze