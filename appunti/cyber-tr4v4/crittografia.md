---
tags:
  - category/note
  - status/finished
  - topic/reti-di-calcolatori
  - topic/cybersecurity
date: 09-03-2025 12:00:57
links:
  - "[[lecture-18022025152022|Lecture 18022025152022]]"
  - "[[lecture-20022026112118|Lecture 20022026112118]]"
---
# Crittografia
---
## Introduzione
> La **crittografia** e' la scienza che studia le tecniche di trasformazione del _plain text_ in _cipher text_ in ottica di una comunicazione tra utenti sicura. In particolare e' la matematica per oscurare il significato dei dati applicando delle trasformazioni irreversibili senza la conoscenza di una qualche chiave.

Il principio assoluto della crittografia e' che **non dev'essere l'algoritmo ad essere sconosciuto, ma bensi' la chiave usata per cifrare i messaggi**: il _vero segreto degli algoritmi di crittografia sono le chiavi_.

<u>Nota bene</u>: non e' da confondere con la crittoanalisi, che e' la matematica per rompere messaggi oscurati senza conoscerne la chiave di cifratura; e neanche con la stenografia, ossia la matematica del nascondere messaggi all'interno di altri media, senza cifrarli in alcun modo ma nascondendoli e basta.

## Obiettivi
La crittografia si pone gli obiettivi di preservare:
- **privacy** (confidenzialità)
- **autenticazione**
- **integrità**
- **non-ripudio**

## Tipologie
I principali algoritmi di crittografia si dividono in:
- [[crittografia-simmetrica|algoritmi a chiave simmetrica]];
- [[crittografia-asimmetrica|algoritmi a chiave asimmetrica]].

## Attacchi
I modelli di attacco di un attaccante si dividono in:
- **passivi** - l'attaccante osserva e prova a decifrare i messaggi --> minaccia la confidenzialita';
- **attivi** - l'attaccante osserva, modifica, inietta, elimina i messaggi --> minaccia la confidenzialità, l'integrità e l'autenticazione;

I modelli di attacco, piu' in dettaglio, si dividono in:
- _ciphertext-only attack_;
- _chosen-plaintext attack_ (CPA);
- _chosen-ciphertext attack_ (CCA);

A prescindere dall'algoritmo di cifratura utilizzato, il mal-intenzionato, puo' sempre approcciare il _chiper text_ per cercare di rompere la sua cifratura senza conoscere la chiave:
- **[[attacco-bruteforce|brute force]]**;
- **analisi statistica**;
- **known-plain text attack**;

## Referenze
- [[principio-di-kerckhoffs|Principio di Kerckhoffs]]