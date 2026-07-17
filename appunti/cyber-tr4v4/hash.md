---
tags:
  - category/note
  - status/finished
  - topic/cybersecurity
date: 23-04-2026 16:25:38
links:
  - "[[lecture-20042026105421|Lecture 20042026105421]]"
  - "[[lecture-04052026091257|Lecture 04052026091257]]"
---
# Hash
---
## Introduzione
> Un'**hash** e' come un'impronta digitale per un file. E' una funzione [[crittografia|crittografica]] che _crea un codice univoco di dimensione fissata a partire da un qualunque oggetto di dimensione variabile_.

## Caratteristiche
Un'hash dev'essere:
- _veloce da calcolare_;
- _la lunghezza dell'output dev'essere piccola e di dimensione fissata_;
- _un piccolo cambiamento nell'input deve risultare in un grande cambiamento nell'output_;
- _resistente alle collisioni_;
- _irreversibile_, ossia
	- e' difficile invertire trovare l'input che da' un certo output ([[funzione-one-way|funzione one-way]]);
	- e' difficile trovare due oggetti che sono mappati nello stesso output;

## Utilizzi
Le funzioni hash sono usate nella [[cybersecurity|cybersecurity]] per:
- **integrita'** - il meccanismo della [[firma-digitale|firma digitale]] si basa su di loro;
- **confidenzialita'** - _al posto di salvare nei [[database|database]] le password in chiaro, si salvano le loro hash_;
	- in questo modo, se degli hacker riescono ad accedere ai DB, non hanno le password originali!

## Funzioni hash
Le funzioni hash piu' conosciute nel mondo [[unix|Unix]] sono:
- **md5**
- **sha-1**
- **sha-2**

Il loro utilizzo e' il seguente:
- _generazione_ -> `{md5, sha1, sha256, ...}sum (filename)`;
- _check_ -> `echo "(hash)  (filename) | md5sum -c`;

## Attacchi
Esistono una serie di attacchi che si possono fare per cercare di **invertire l'hash, ossia trovare il plaintext a partire dal ciphertext**:
- [[attacco-pre-calcolato|attacco pre-calcolato]];
- [[attacco-a-dizionario|attacco a dizionario]];
- [[attacco-bruteforce|attacco a bruteforce]].

## Referenze