---
tags:
  - category/note
  - status/finished
  - topic/cybersecurity
date: 19-05-2026 15:25:37
links:
---
# DoS
---
## Introduzione
> L'[[attacco-informatico|attacco informatico]] **DoS** (**Denial of Service**) e' una forma di attacco alla _disponibilita'_ (_availability_ in [[cia|CIA]]) di alcuni servizi. Precisamente si tratta di un'_azione che previene o rende impossibile l'uso autorizzato di reti, sistemi, o applicazioni esaurendo risorse tipo tempo di calcolo ([[cpu|CPU]]), memoria ([[ram|RAM]]), banda della rete, e spazio su disco_.

## Attacchi
### Syn flooding
Per stabilire una connessione [[tcp|TCP]] in un'[[architettura-client-server|architettura client-server]], un client e un server fanno il [[three-way-handshake|three-way handshake]]: `SYN`, `SYN+ACK`, `ACK`.

Nell'attacco di syn flooding, il client invia tanti `SYN`, e non risponde al `SYN+ACK` del server, lasciandolo "appeso" in attesa dell'`ACK` per stabilire la connessione. Inviando tanti `SYN` di fila si esauriscono cosi' le risorse di memoria del server.

## Referenze
- [[ddos|DDoS]]