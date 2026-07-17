---
tags:
  - category/note
  - status/finished
  - topic/cybersecurity
date: 18-04-2026 12:54:37
links:
---
# Tor
---
## Introduzione
> **Tor** (**The Onion Router**) nasce come alternativa a [[mix|MIX]] per garantire l'[[anonimato|anonimato]] in rete.

## Funzionamento
Funziona per step:
1. $A$ ottiene una lista di nodi Tor da un _server directory pubblico_;
2. $A$ sceglie un percorso random verso un server destinazione;
	- cifra il messaggio _a cipolla_, a partire dalla chiave pubblica dell'ultimo nodo del percorso (prima del destinatario) fino ad arrivare alla chiave pubblica del primo nodo;
	- invia il messaggio, e ogni nodo intermedio decifrera' con la propria chiave privata il messaggio, rimuovendo uno strato di cifratura;
	- l'ultimo nodo del percorso decifra con la sua chiave privata, e invia al server destinazione il messaggio in chiaro;
3. se $A$ si connette a un altro server tempo dopo, viene scelto un altro percorso random verso quel server destinazione;

Quello che si ottiene e' quindi appunto un routing a cipolla:
![[onion-routing.png]]

Di conseguenza, le garanzie sono 2:
- l'utilizzo di server di relay multipli che formano il percorso dei messaggi contribuisce a preservare l'anonimato;
- l'intero traffico e' protetto da multipli strati di cifratura.

Questa e' la ragione dietro alla denominazione di Tor di **rete overlay**: una rete chiusa dentro alla quale vengono distribuiti dati in forma anonima.

<u>Nota bene</u>: esistono anche servizi Tor che consentono di uscire verso la rete "normale". Sono chiamati **exit node**, e chi li mantiene vede tutto il nostro traffico, inoltre sono bloccati da ogni servizio in quanto pubblici.

## Garanzie
Puo' garantire l'anonimato sia del client che del server! Infatti i servizi `.onion` nascondono il loro reale indirizzo IP.

## Limiti
La rete e' principalmente contraria all'anonimato: attivando la geolocalizzazione si puo' rivelare l'[[indirizzo-ip|IP]] di chi sta accedendo a un determinato servizio.

Lo stesso vale per le richieste ai [[dns|DNS]].

Delle informazioni private di profilazione potrebbero essere anche inviate al server remoto (tramite [[js|JS]]), facendo [[dataleak|dataleak]] di tipo _side channel_... per esempio la dimensione della finestra precisa del browser.

## Referenze