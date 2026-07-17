---
tags:
  - category/note
  - status/finished
  - topic/cybersecurity
date: 03-03-2026 19:56:18
links:
  - "[[lecture-02032026091732|Lecture 02032026091732]]"
---
# Crittanalisi lineare
---
## Introduzione
> La **crittanalisi lineare** e' un attacco crittografico che sfrutta le correlazioni lineari tra il testo in chiaro (plaintext), il testo cifrato (ciphertext) e la chiave per cercare di recuperare informazioni sulla chiave stessa.

Anche questo attacco appartiene alla categoria dei _chosen plaintext attack_ (CPA): si assume che l'attaccante conosca un certo numero di coppie $(m, c)$, ovvero plaintext e ciphertext.

Si basa sull'idea di creare un'approssimazione del [[cifrario-di-blocco|cifrario di blocco]].

## Applicazioni
### DES
Come per la [[crittanalisi-differenziale|crittanalisi differenziale]], [[des|DES]] resiste abbastanza bene alla crittanalisi lineare: per un attacco di questo tipo, sono necessarie circa $2^{43}$ coppie $(m, c)$.

## Referenze