---
tags:
  - category/note
  - status/finished
  - topic/cybersecurity
date: 08-03-2026 19:43:06
links:
  - "[[lecture-06032026111911|Lecture 06032026111911]]"
---
# CBC
---
## Introduzione
> Il **CBC** (**Cipher Block Chaining**) e' un modo di operare un [[cifrario-di-blocco|cifrario di blocco]], in cui l'input dell'algoritmo di cifratura e' lo `XOR` tra il prossimo blocco di testo in chiaro (plaintext) e il blocco di testo cifrato (ciphertext) precedente.

E' usato per cifrare messaggi piu' lunghi di $n$ bits. In [[des|DES]] e [[aes|AES]], infatti, i messaggi sono divisi in blocchi di 64 e 128 bits: e se il messaggio e' piu' lungo? Ci pensa CBC.

Inoltre, oltre a garantire la **confidenzialita'** puo' essere usato per ottenere l'**autenticazione**.

## Schema
![[cbc-encryption.png]]

Le equazioni di cifratura sono:
$$
\begin{cases}
C_{0} = IV \\
C_{i} = E_{k}(P_{i} \oplus C_{i-1}), \quad i = 1, \cdots, N
\end{cases}
$$
mentre quelle di decifratura sono:
$$
\begin{cases}
C_{0} = IV \\
P_{i} = D_{k}(C_{i}) \oplus C_{i-1}, \quad i = 1, \cdots, N
\end{cases}
$$
dove $IV$ e' un **vettore di inizializzazione** (initialization vector) che deve essere scelto in modo casuale e unico per ogni cifratura, e deve essere noto sia al mittente che al destinatario ma **non prevedibile da esterni**.

Non e' come il [[nonce|nonce]]: l'**IV non puo' essere noto in anticipo dall'attaccante**, altrimenti potrebbe usarlo per corrompere i messaggi e farli sembrare corretti al ricevente.

Di fatto, gli IV sono inviati a parte utilizzando [[ecb|ECB]]! E sono generati nei due seguenti modi:
- casualmente;
- applicando una funzione di cifratura con la stessa chiave $k$ a un nonce.

### Attacco
Se l'avversarsio puo' prevedere il prossimo IV, allora puo' sferrare un CPA (chosen-plaintext attack) su CBC:
![[cbc-iv-attack.png]]

## Referenze