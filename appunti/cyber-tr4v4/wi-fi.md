---
tags:
  - category/note
  - status/finished
  - topic/cybersecurity
date: 19-04-2026 13:43:19
links:
  - "[[lecture-17042026111903|Lecture 17042026111903]]"
---
# Wi-Fi
---
## Introduzione
> Il **Wi-Fi** e' una tecnologia standardizzata per la comunicazione wireless locali.

## Attacchi e difese
### [[livello-fisico|Livello fisico]]
Non sono poste protezioni normalmente... esistono delle pitture in grado di attenuare molto le onde radio.

### [[livello-mac-llc|Livello MAC-LLC]]
Sappiamo che si utilizza [[csma-ca|CSMA-CA]] per risolvere eventuali collisioni. 
Si presenta inoltre il [[problema-del-terminale-nascosto|problema del terminale nascosto]], risolto usando [[rts-cts|RTS-CTS]].

Ma cosa succede se un client malevolo non rispetta lo spazio di silenzio successivo a una collisione e non aspetta nessun messaggio IFS? **Parla solo lui** (_appropriazione della rete_)!
E se due client malevoli si comportano in questo modo? **Nessuno puo' parlare** (_[[dos|DoS]]_)!

Di conseguenza, per proteggersi da questi attacchi, il Wi-Fi propone le seguenti soluzioni:
- **[[ssid|SSID]] hiding** - una volta che i client sono connessi, si nasconde la rete, non inviando piu' in broadcast il SSID;
	- stiamo facendo security by obscurity... non va bene!
- **whitelisting** - l'access point ha una lista di [[indirizzo-mac|indirizzi MAC]] che si possono connettere a lui;
	- tuttavia e' facilmente aggirabile con un qualunque software di _MAC changer_ (MAC spoofing);

### Cifratura
Ci potrebbero essere dei meccanismi di cifratura per proteggersi dall'[[eavesdropping|eavesdropping]]... tuttavia lo standard non lo prevede.

Per esempio, esiste un messaggio di **disassociazione** da una rete: se un client connesso a un access point glielo invia, quest'ultimo lo disconnette dalla rete.
Con MAC spoofing e' facile disconnettere un altro utente connesso alla rete senza il suo consenso!

Uno sottostandard del Wi-Fi prevede degli speciali frames (PMF) per proteggere i messaggi in questione.

### Autenticazione
I sistemi di autenticazione e confidenzialita' dello standard Wi-Fi sono:
- [[wep|WEP]]
- [[wpa|WPA]]

## Referenze