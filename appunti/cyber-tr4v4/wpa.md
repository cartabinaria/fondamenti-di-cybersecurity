---
tags:
  - category/note
  - status/finished
  - topic/cybersecurity
date: 25-04-2026 15:16:10
links:
  - "[[lecture-24042026111228|Lecture 24042026111228]]"
---
# WPA
---
## Introduzione
> Il **WPA** (**Wi-Fi Protected Access**) e' uno standard introdotto per sopperire alle lacune di sicurezza del [[wep|WEP]], per l'autenticazione e la confidenzialita' del canale [[wi-fi|Wi-Fi]].

## Utilizzo
Il WPA pone 3 modalita' principali di utilizzo:
- **PSK** (Pre-Shared Key) - per reti domestiche;
- **Enterprise** - per reti con molti utenti;
- **[[wps|WPS]]**;

### Schemi di protezione
Definisce come schemi di protezione dei dati trasmessi due protocolli:
- [[tkip|TKIP]]
- [[ccmp|CCMP]]

Ricordando che i frame Wi-Fi, anche chiamati **MPDU**, sono del tipo:
![[mpdu.png]]

## Attacchi
Le reti PSK soffrono comunque degli stessi problemi legati all'autenticazione... ad esempio, e' possibile perpretrare [[attacco-bruteforce|attacchi bruteforce]] o [[attacco-a-dizionario|attacchi a dizionario]]: per queste ragioni e' stato ideato il [[wps|WPS]]!

Sulle reti WPA2, inoltre, e' stato scoperto un tipo di _replay attack_ chiamato [[krack|Krack]]: nella fase di autenticazione della rete viene utilizzato un _nonce_ che puo' essere riusato identico per velocizzare le autenticazioni successive... questo meccanismo e' facilmente sfruttabile per poter risalire alla chiave di cifratura.

## WPA3
La terza versione dello standard introduce sistemi di sicurezza ulteriori rispetto a WPA2. Utilizza il SAE per mitigare gli attacchi a dizionario; previene la decrittazione di dati passati, evitando attacchi come il Krack.

E' ideale per reti moderne (richiede hardware recente), mentre WPA2 e' compatibile con i vecchi dispositivi.

## Referenze