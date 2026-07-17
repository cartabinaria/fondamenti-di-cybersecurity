---
tags:
  - category/note
  - status/finished
  - topic/cybersecurity
date: 25-04-2026 15:30:58
links:
  - "[[lecture-24042026111228|Lecture 24042026111228]]"
---
# TKIP
---
## Introduzione
> Il **TKIP** (**Temporal Key Integrity Protocol**) e' un protocollo del [[wi-fi|Wi-Fi]] usato per la protezione dei dati trasmessi, compatibile con [[wep|WEP]].

## Funzionamento
Garantisce:
- **integrita'** - TKIP aggiunge un codice di integrita' del messaggio dopo il campo dati del frame MAC;
	- questo codice si chiama **MIC**, ed e' generato dall'algoritmo [[michael|Michael]], che lo calcola prendendo come input gli [[indirizzo-mac|indirizzi MAC]] sorgente e destinazione e il campo dati
- **confidenzialita'** - garantita cifrando il frame + MIC con [[rc4|RC4]].

### TK
Due chiavi, di 32 bit ciascuna, vengono usate da Michael per produrre il MIC:
- la prima per proteggere i messaggi dal STA all'AP;
- la seconda per proteggere i messaggi dall'AP al STA.

I restanti 128 bit sono troncati per generare la chiave per RC4.

### TSC
Un contatore di sequenza TSC viene assegnato a ciascun frame, con l'obiettivo di:
- proteggere col MIC da _replay attack_;
- combinarsi col TK della sessione per produrre una chiave dinamica che cambia con ogni frame trasmesso (rendendo difficile la crittoanalisi).

## Referenze