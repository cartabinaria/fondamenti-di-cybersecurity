---
tags:
  - category/note
  - status/finished
  - topic/cybersecurity
date: 08-03-2026 19:41:27
links:
  - "[[lecture-06032026111911|Lecture 06032026111911]]"
---
# ECB
---
## Introduzione
> L'**ECB** (**Electronic Codebook**) e' un modo di operare un [[cifrario-di-blocco|cifrario di blocco]], in cui ogni blocco di testo in chiaro (plaintext) viene _cifrato indipendentemente dagli altri, usando la stessa chiave $k$_.

Viene usato per trasmettere in modo sicuro _singole chiavi_: dimostreremo che e' un modo di operare non sicuro dei cifrari di blocco!

## Schema
Il messaggio originale $P$ viene diviso in $N$ blocchi $P_{1}, \cdots, P_{N}$:
![[ecb.png]]

La stessa chiave $K$ e' usata per ogni blocco, e soprattutto non c'e' nessun _feedback_: ogni blocco e' cifrato in modo indipendente.
Da qui nasce proprio il problema: **se due blocchi del plaintext sono identici, anche i loro ciphertext lo saranno**. Il problema e' quindi che e' _deterministico_: come avviene per il [[cifrario-di-vigenere|cifrario di Vigenere]], posso quindi fare _analisi statistica sui blocchi di ciphertext_.

## Crittanalisi
Ci chiediamo se ECB sia **[[cifrario-semanticamente-sicuro|semanticamente sicuro]]**.

No, **non e' semanticamente sicuro** nonostante lo sia su un solo blocco! Infatti smette di essere sicuro quando si cifrano dati in piu' blocchi proprio perche' questi sono cifrati con la stessa chiave!
![[ecb-sicurezza-semantica.png]]

### Soluzioni
Il problema di ECB e' proprio il determinismo: si usa la stessa chiave, per piu' blocchi, senza nessun meccanismo di feedback.

Offriamo quindi 2 soluzioni:
- **cifratura randomica**;
- **cifratura basata su [[nonce|nonce]]**;

### Cifratura randomica
Un cifrario e' randomico se cifrando uno stesso messaggio $m$ due volte, escono due ciphertext diversi (con alta probabilita'). Il ciphertext dev'essere piu' lungo del plaintext.

### Cifratura basata su nonce
![[cifratura-basata-su-nonce.png]]

## Referenze