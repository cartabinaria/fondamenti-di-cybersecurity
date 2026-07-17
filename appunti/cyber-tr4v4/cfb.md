---
tags:
  - category/note
  - status/finished
  - topic/cybersecurity
date: 08-03-2026 19:44:35
links:
  - "[[lecture-06032026111911|Lecture 06032026111911]]"
  - "[[lecture-09032026092159|Lecture 09032026092159]]"
---
# CFB
---
## Introduzione
> Il **CFB** (**Cipher Feedback**) e' un modo di operare un [[cifrario-di-blocco|cifrario di blocco]], in cui l'input e' processato su $s$ bit alla volta (_lunghezza dei blocchi variabili_) e il precedente ciphertext e' usato come input dell'algoritmo di cifratura per produrre output pseudorandom, che viene messo in `XOR` con il plaintext per produrre il ciphertext.

## Schema
![[cfb.png]]

E' interessante appunto notare come la **rete di decifratura utilizza la stessa funzione di cifratura**!

L'idea, comunque, e' quella di usare un cifrario di blocco qualunque, come [[des|DES]] o [[aes|AES]], e poi di **clumpare il risultato per prendere solo gli $s$ bits necessari a fare lo `XOR` con gli $s$ bits del plaintext**! Quindi, il ciphertext viene inserito in uno **shift register** invertendo gli ultimi $s$ bits con i primi $b-s$ bits.

Lo shift register che fungera' da input $I_{i}$ si compone quindi di:
- $b-s$ bits presi come MSB di $I_{i-1}$, seguiti da
- $s$ bits presi direttamente da $C_{i-1}$

L'IV (Initialization Vector) e' di 64 bits ($b = 64$) nel caso di DES, mentre e' di 128 bits ($b = 128$) nel caso di AES.

## Referenze