---
tags:
  - category/note
  - status/finished
  - topic/cybersecurity
date: 25-04-2026 15:48:42
links:
  - "[[lecture-24042026111228|Lecture 24042026111228]]"
---
# WPS
---
## Introduzione
> Il **WPS** (**Wi-Fi Protected Setup**) e' un meccanismo implementato dal [[wpa|WPA]] per prevenire attacchi [[attacco-bruteforce|bruteforce]] o [[attacco-a-dizionario|a dizionario]] sulle reti [[wi-fi|Wi-Fi]].

## Funzionamento
L'idea di base e' quella di semplificare il metodo di accesso, senza password:
- o tramite la pressione di un tasto fisico sull'AP;
- o tramite l'inserimento di un codice PIN che si modifica nel tempo (a 7/8 cifre).

## Problematiche
Il problema del WPS e' che l'[[ssid|SSID]] della rete non e' crittografato: e' possibile perpretrare un attacco tramite un _Rogue Access Point_, in grado di fare **spoofing del nome della rete**.

Inoltre, il meccanismo del PIN a 7/8 cifre e' debolissimo: con 7 cifre e' sufficiente fare 10.000.000 tentativi, che un computer moderno ci mette poco tempo a fare!
L'aggressore, dopo aver recuperato il PIN, ottiene la chiave pre-condivisa, ecc...

E infine, il PIN viene controllato dal sistema di autenticazione prima per le prime 4 cifre, e solo di seguito per le 3 successive: dato che le 3 successive cifre sono controllate solo se le prime 4 sono corrette, i tentativi del brute-force sono in totale solo $10000+1000=11000$, fattibili in circa 20 ore.

Per giunta, il WPS su molti dispositivi embedded utilizza un [[prng|PRNG]] predicibile: il bruteforce si puo' ridurre a un paio di minuti!

Morale della favola: **non usare mai WPS**!

## Referenze