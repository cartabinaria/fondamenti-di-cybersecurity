---
tags:
  - category/note
  - status/finished
  - topic/cybersecurity
date: 18-04-2026 12:45:20
links:
---
# MIX
---
## Introduzione
> Nato per anonimizzare le [[posta-elettronica|email]][^1], **MIX** e' stato poi generalizzato a _sistema per anonimizzare l'intero traffico [[tcp|TCP]]_.

Si pone l'obiettivo di:
- anonimizzare il mittente;
- eliminare qualunque tipo di collegamento contro [[eavesdropping|eavesdropper]] globali.

## Funzionamento
Un server MIX e' un **server relay store-and-forward**:
- _batching_ - raccoglie $n$ messaggi di lunghezza fissa da diverse sorgenti;
- _mixing_ - inoltra i messaggi ai rispettivi destinatari in ordine casuale dopo averli [[crittografia|decifrati]];

Il workflow e' quindi il seguente:
1. il mittente $u_{i}$ cifra il suo messaggio con la [[crittografia-asimmetrica|chiave pubblica]] del server MIX;
2. il server MIX accumula $n$ messaggi cifrati, li decifra, e poi li invia in ordine casuale;

![[mix.png]]

## Svantaggi
Gli svantaggi sono:
- la cifratura e decifratura a chiave pubblica a ogni MIX e' _computazionalmente costosa_;
- la latenza e' elevata, data l'attesa dei batch di $n$ messaggi.

Per ovviare a questi problemi, e' nato [[tor|Tor]].

## Referenze

[^1]: come un [[anonymous-remailer|anonymous remailer]]
