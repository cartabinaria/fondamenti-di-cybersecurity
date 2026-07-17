---
tags:
  - category/note
  - status/finished
  - topic/cybersecurity
date: 19-04-2026 13:17:17
links:
  - "[[lecture-17042026111903|Lecture 17042026111903]]"
---
# Sicurezza wireless
---
## Introduzione
L'ambiente wireless si compone di:
- _client wireless_;
- _access point_ - fornisce una connessione alla rete o al servizio;
- _mezzo di trasmissione_ - etere, o campo elettromagnetico, che trasporta le onde radio;
- _canale wireless_ - le reti wireless prevedono comunicazioni broadcast, piu' soggette a interferenze, intercettazioni e attacchi attivi;
- _mobilita'_ - dispositivi wireless piu' portatili e sicuri dei dispositivi cablati, ma piu' rischiosa la comunicazione;
- _risorse_ - dispositivi wireless hanno risorse di memoria e di elaborazione limitate per contrastare minacce come DoS;
- _accessibilita'_ - dispositivi wireless incustoditi sono piu' vulnerabili agli attacchi fisici;

Le possibili minacce sono:
- _associazione dannosa_ - un dispositivo wireless viene configurato in modo da apparire come un punto di accesso legittimo (RAP, Rogue Access Point), consentendo all'operatore di rubare password ecc...
	- e' un tipo di attacco [[man-in-the-middle|man-in-the-middle]]!
- _reti ad hoc_ - reti peer-to-peer tra computer wireless senza un punto di accesso tra di essi; possono rappresentare una minaccia alla sicurezza per la mancanza di un punto di controllo centrale
- _reti non tradizionali_ - reti Bluetooth, scanner di codici a barre e PDA portatili, sono un rischio per la sicurezza per intercettazione e spoofing
- _furto di identita'_ - MAC spoofing
- _attacchi man-in-the-middle_ - ingannare un utente e un AP facendogli credere di comunicare tra di loro, intercettando tutto il traffico (magari tramite un RAP)
- _denial of service_ ([[dos|DoS]]) - nelle reti wireless, un attacco DoS e' quando un attaccante bombarda continuamente un AP o un'altra porta wireless
- _network injection_ - preso di mira un AP wireless esposti a traffico di rete non filtrato, come messaggi di protocolli di routing o di gestione della rete

![[attacchi-wireless.png]]

Attacchi:
- [[jamming|Jamming]];
- [[eavesdropping|Eavesdropping]] e [[sniffing|sniffing]];

## Referenze