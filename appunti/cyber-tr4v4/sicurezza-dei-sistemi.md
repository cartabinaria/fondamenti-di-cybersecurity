---
tags:
  - category/note
  - status/finished
  - topic/cybersecurity
date: 19-04-2026 11:53:20
links:
  - "[[lecture-13042026091404|Lecture 13042026091404]]"
---
# Sicurezza dei sistemi
---
## Principi
I principi fondamentali per le politiche di sicurezza dei sistemi sono:
- _open design_ - e' il principio di Kerckhoffs, anche detto _no security by obscurity_;
- _economy of mechanism_ - mantenere le cose le piu' semplici possibile;
- _fail-safe defaults_ - di base, i soggetti non hanno alcun privilegio su nessun oggetto;
- _complete mediation_ (reference monitor) - non e' possibile accedere direttamente agli oggetti, ovvero tutti gli oggetti devono essere monitorati;
- _least privilege_ - ogni soggetto deve operare utilizzando l'insieme minimo di privilegi necessari per svolgere una sua task;
	- si impone tramite un reference monitor che controlla ogni accesso a ogni oggetto!

<u>Nota bene</u>: la sicurezza dei sistemi differisce dalla [[sicurezza-di-rete|sicurezza di rete]]!

## Problemi
I tipici problemi che si incontrano nei sistemi locali sono:
- _privilege escalation_ - e' la possibilita' di ottenere sempre piu' privilegi, sfruttando qualche falla del sistema (o errore di configurazione);
- _arbitrary code execution_ - consente di solito di fare privilege escalation;

## Referenze
- [[access-control|Access control]]