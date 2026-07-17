---
tags:
  - category/note
  - status/finished
  - topic/reti-di-calcolatori
  - topic/cybersecurity
date: 09-03-2025 12:23:55
links:
  - "[[lecture-18022025152022|Lecture 18022025152022]]"
  - "[[lecture-20022026112118|Lecture 20022026112118]]"
  - "[[lecture-13032026111916|Lecture 13032026111916]]"
  - "[[lecture-30032026091529|Lecture 30032026091529]]"
---
# Crittografia asimmetrica
---
## Introduzione
> La **crittografia asimmetrica** comprende una serie di algoritmi per la [[crittografia|crittografia]] che utilizzano _due chiavi, una pubblica e una privata, per poter cifrare e decifrare_.
> Puo' essere usata per _garantire contemporaneamente confidenzialita', autenticita' e integrita'_ (funzionamento alla base della [[firma-digitale|firma digitale]]).

In modo particolare, ogni interlocutore ha:
- una **chiave pubblica**, conosciuta da tutti, salvata in un [[database|database]] pubblico;
- una **chiave privata**, conosciuta solo dall'interlocutore stesso.

## Definizione
> Un **sistema di cifratura a chiave pubblica** si definisce come una tripla $(G, E, D)$, dove:
> - $G()$ e' un algoritmo randomizzato che produce coppie di chiavi $(p_{k}, s_{k})$;
> - $E(p_{k}, m)$ e' un algoritmo randomizzato che prende plaintext $m \in M$ e restituisce in output ciphertext $c \in C$;
> - $D(s_{k}, m)$ e' un algoritmo deterministico che prende $c \in C$ e restituisce in output $m \in M$.
> 
> Deve valere la proprieta' di _consistenza_:
> $$\forall (p_{k}, s_{k}). \forall m \in M. \ \ \ \ D(s_{k}, E(p_{k}, m)) = m$$

Si dice spesso che un sistema di cifratura a chiave pubblica dev'essere una [[tdf|TDF]]. In particolare **un sistema di cifratura a chiave pubblica e' sicuro se la sua funzione di cifratura $E(p_{k}, m)$ e' una funzione _one-way_**.

<u>Nota bene</u>: **la funzione di cifratura $E$ dev'essere un algoritmo randomizzato**. Il determinismo non lo renderebbe [[cifrario-semanticamente-sicuro|semanticamente sicuro]]... E' lo stesso problema che si presenta nella [[crittografia-simmetrica|crittografia simmetrica]] con [[ecb|ECB]]!

## Scenari
La crittografia asimmetrica puo' essere utilizzata per garantire:
- **autenticazione**;
- **confidenzialita'**;

### Autenticazione
E' sufficiente che il messaggio da inviare sia **cifrato con la chiave privata del mittente**: in questa maniera il destinatario puo' verificare, decifrando il messaggio con la chiave pubblica del mittente, l'autenticazione.

### Confidenzialita'
E' sufficiente che il messaggio da inviare sia **cifrato con la chiave pubblica del destinatario**: in questo modo solo costui potra' decifrarlo correttamente con la sua chiave privata.

Il principio di funzionamento e' il seguente: se $A$ vuole bandare un messaggio $m$ a $B$, allora cifra $m$ con la chiave pubblica $K_{B}^{+}$ di $B$ (dopo avergliela chiesta); $B$ quando riceve il messaggio lo decifra usando la sua chiave privata $K_{B}^{-}$.
![[crittografia-asimmetrica.png]]

Di per se', tutti gli algoritmi a crittografia asimmetrica funzionano in questo modo. Differiscono pero' nella creazione delle chiavi pubbliche e private tale che valga
$$m = K_{B}^{-}(K_{B}^{+}(m))$$

In modo particolare si vuole garantire che la conoscenza della chiave pubblica non permetta di fare brute-force sulla chiave privata per decifrare il messaggio: in altre parole la funzione di cifratura dev'essere [[funzione-one-way|one-way]].

## Applicazioni
Puo' essere usata per:
- cifratura e decifratura standard ($E/D$) --> funzionante ma estremamente inefficiente;
- [[scambio-di-chiavi|scambio di chiavi]] --> per scambiare chiavi simmetriche o di sessione;
- [[firma-digitale|firma digitale]].

## Algoritmi
I principali algoritmi a chiave asimmetrica sono:
- [[puzzle-di-merkle|Puzzle di Merkle]];
- [[diffie-hellman|Diffie-Hellman]];
- [[rsa|RSA]];
- [[elgamal|ElGamal]];
- [[rabin|Rabin]];
- [[crittografia-ellittica|Crittografia ellittica]].

## Problemi
Una delle debolezze di questi algoritmi e' che **per messaggi molto brevi diventa estremamente facile la loro decifratura**: conoscendo la dimensione del messaggio $m$, si puo' infatti vedere per ogni combinazione possibile di lettere di quella dimensione se corrisponde al messaggio cifrato con la chiave pubblica.

## Referenze