---
tags:
  - category/note
  - status/finished
  - topic/cybersecurity
date: 09-03-2026 14:05:56
links:
  - "[[lecture-09032026092159|Lecture 09032026092159]]"
---
# Certificato digitale
---
## Introduzione
> Un **certificato digitale** e' un'_associazione tra un proprietario e la sua chiave pubblica_, nel contesto dello [[scambio-di-chiavi|scambio di chiavi]] della [[crittografia-asimmetrica|crittografia asimmetrica]], [[firma-digitale|firmata]] dalla [[certification-authorities|CA]] di riferimento.

## Utilizzo
Risolve il problema dello scambio delle chiavi pubbliche. Il funzionamento e' il seguente:
- un utente $A$ si presenta (fisicamente o non) da una CA e richiede un certificato;
- la CA consegna un certificato ad $A$ della forma $C_{A} = E(PR_{CA}, [T || ID_{A} || PU_{A}])$, dove
	- $T$ e' un timestamp;
	- $ID_{A}$ e' un identificatore dell'utente $A$ (per esempio il nome e cognome, il codice fiscale, ecc...);
	- $PU_{A}$ e' l'effettiva chiave pubblica di $A$;
	- $PR_{CA}$ e' la chiave privata con la quale viene firmato (cifrato) $[T||ID_{A}||PU_{A}]$;
- a questo punto $A$ puo' inviare il suo certificato a chiunque voglia contattarlo;
- il ricevente verifica che $A$ sia realmente $A$ decifrando il certificato con la chiave pubblica della CA di riferimento;

## Requisiti
I certificati devono rispettare una lista di requisiti:
- _ogni partecipante deve poter leggere il certificato per determinare il nome e la chiave pubblica del suo proprietario_;
- _ogni partecipante deve poter verificare che il certificato e' originato da una CA vera e non fittizia_;
- _solo una CA puo' creare e modificare certificati_;
- _ogni partecipante deve poter verificare il periodo di validita' del certificato_ (perche' scade).

## Esempi
### X.509
![[x-509.png]]

Il certificato si compone di:
- **il certificato vero e proprio**;
- **l'hash del certificato firmato con la chiave privata della CA che lo elargisce**.

Per verificare il certificato, **un receiver applica la [[funzione-hash|funzione di hash]] alla prima parte del certificato, decifra la firma del certificato e confronta se i due hash corrispondono**.

<u>Attenzione</u>: c'e' da fare attenzione ai certificati vecchi che sono gia' stati condivisi.

## Referenze