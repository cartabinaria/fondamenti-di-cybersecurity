---
tags:
  - category/note
  - status/finished
  - topic/cybersecurity
date: 19-04-2026 13:23:16
links:
  - "[[lecture-17042026111903|Lecture 17042026111903]]"
---
# Eavesdropping
---
## Introduzione
> Per **eavesdropping** si intende un attacco su reti che consiste nell'ascoltare il mezzo trasmissivo alla ricerca dei messaggi scambiati tra due interlocutori.

## Wireless
Nel mondo wireless e' facile da perpretrare!
Anche adottando la tecnica [[fhss|FHSS]] per trasmettere i dati, se si e' a conoscenza del seed del [[prng|PRNG]] di FHSS allora ci si puo' sincronizzare con la sequenza inviata e _sniffare_ i dati.

Sono necessari, in generale:
- un ricevitore (piu' antenna), alla corretta distanza per ricevere il segnale;
- la conoscenza della modulazione utilizzata;
- la conoscenza del protocollo utilizzato;

Tuttavia e' possibile fare attacchi di questo tipo senza nemmeno conoscere la modulazione o il protocollo utilizzati: **replay attack**.
Ci basta ascoltare il segnale e reinviarlo cosi' com'e'. Questo e' gia' sufficiente per confondere il ricevitore.

### Replay attack
Infatti il canale radio non e' protetto mediante meccanismi di confidenzialita' o integrita'... Per cui un replay attack puo' essere estremamente efficace, per esempio, nell'_apertura dei cancelli automatici_. E' sufficiente catturare il treno di impulsi OOK (On-Off Keying) sulla portante corretta (di solito 433 Mhz), e reinviarlo.

#### Rolling code
Questo problema si risolve con il **rolling code**:
1. il trasmettitore seleziona un codice basandosi su un PRNG e lo invia;
2. il trasmettitore seleziona il codice successivo, basandosi sul PRNG;
3. il ricevitore controlla che il codice ricevuto sia consistente con il suo PRNG, nel caso effettua l'operazione (_apertura del cancello_) e fa avanzare il PRNG.

Tuttavia, cosa succede se il codice viene trasmesso ma non ricevuto (per esempio, per via di una pioggia forte)? Si disallineano i PRNG! E quindi il cancello non si apre mai piu'... Per questa ragione si implementa lato ricevitore un meccanismo di finestra di codici successivi a quello abilitato (per esempio 100), e si sposta la finestra di conseguenza.

Questo non risolve pienamente il replay attack: potrebbe capitare che il trasmettitore invii il messaggio, il ricevitore non lo riceva, e l'attaccante reinvia quello stesso messaggio subito dopo facendolo ricevere al ricevitore.

Tuttavia lo rende meno efficiente.

#### Challenge and Response
Il problema di questi metodi e' la mancanza di un canale di feedback: il trasmettitore trasmette e basta.
Se il ricevitore lo trasformiamo in un transceiver, allora possiamo implementare il protocollo di **challenge and response**:
1. l'autenticando richiede di accedere al sistema tramite un messaggio;
2. l'autenticatore genera un numero random (_nonce_) e lo invia all'autenticando;
3. l'autenticando cifra il nonce inviato e reinvia il valore cifrato all'autenticatore;
4. l'autenticatore decifra il valore cifrato e valida o meno l'autenticazione;

In generale, nel mondo radio si usa [[aes|AES]] (come [[cifrario-di-blocco|cifrario di blocco]]) e [[kasumi|Kasumi]] (come [[cifrario-di-flusso|cifrario di flusso]]).

### RFID spoofing
Nel mondo degli [[rfid|RFID]], c'e' la possibilita' di fare [[spoofing|spoofing]], previo eavesdropping.

## Referenze