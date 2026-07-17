---
tags:
  - category/note
  - status/finished
  - topic/reti-di-calcolatori
  - topic/cybersecurity
date: 09-03-2025 12:10:33
links:
  - "[[lecture-18022025152022|Lecture 18022025152022]]"
  - "[[lecture-20022026112118|Lecture 20022026112118]]"
  - "[[lecture-23022026091407|Lecture 23022026091407]]"
  - "[[lecture-27022026111035|Lecture 27022026111035]]"
---
# Crittografia simmetrica
---
## Introduzione
> La **crittografia simmetrica** comprende una serie di algoritmi per la [[crittografia|crittografia]] che utilizzano _una sola chiave per cifrare e decifrare_.
> Puo' essere usata per garantire _confidenzialita'_ (privacy), ma anche _autenticita'_ e _integrita'_ tramite il meccanismo del MAC.

![[chiave-simmetrica.png]]

## Casi d'uso
Puo' essere usata in modalita':
- **single-use** - uso la chiave solo una volta per inviare un messaggio/file/email;
- **multi-use** - uso la stessa chiave per cifrare piu' messaggi (utilizzando il [[nonce|nonce]]);

## Algoritmi
I piu' importanti algoritmi a chiave simmetrica (o privata) sono:
- [[scitala|scitala]]
- [[cifrario-di-cesare|cifrario di Cesare]]
- [[cifrario-a-sostituzione-monoalfabetica|cifrario a sostituzione monoalfabetica]]
- [[cifrario-affine|cifrario affine]]
- [[cifrario-di-vigenere|cifrario di Vigenere]]
- [[cifrario-di-hill|cifrario di Hill]]
- [[enigma|Enigma]]
- [[cifrario-a-rotazione|cifrario a rotazione]]
	- è un Cesare ma in cui si scelgono $n$ permutazioni, e ciclicamente ad ogni $n$ lettere si cambia permutazione
	- l'idea e' di fare piu' round di sostituzioni, mappando una lettera piu' volte --> la chiave e' la combinazione di rotori
- [[des|DES]]
	- usato nella modernità
	- si usa una chiave a 56 bit, simmetrica, che viene applicata su blocchi di 64 bit di plaintext
	- si può decifrare in un giorno!
	- con 3DES si cifra 3 volte con 3 chiavi diverse
- [[aes|AES]]
	- molto piu' sicuro del DES
- [[crittografia-ellittica|crittografia ellittica]]
- [[qpc|QPC]]

![[crittografia-storia.png]]

## Categorie
- [[cifrario-simmetrico|Cifrario simmetrico]]
- [[cifrario-di-flusso|Cifrario di flusso]]
- [[cifrario-di-blocco|Cifrario di blocco]]

Confronti:
![[cifrari-blocco-flusso-confronto.png]]

Gli ultimi due cifrari di flusso sono quelli moderni, di tipo [[estream|eStream]]: **sono velocissimi**!
Quelli di blocco, ovviamente, necessitano di piu' tempo.

## Problema
Il chiaro **problema di questo approcco e' la condivisione della chiave**! Se esiste un meccanismo sicuro per scambiare la chiave simmetrica, allora possiamo usare direttamente quello per scambiare i messaggi!

## Referenze
- [[crittografia-asimmetrica|Crittografia asimmetrica]]
- [[cifrario-sicuro|Cifrario sicuro]]
- [[number-generators|Number generators]]