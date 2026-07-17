---
tags:
  - category/note
  - status/finished
  - topic/reti-di-calcolatori
  - topic/cybersecurity
date: 30-03-2025 22:04:30
links:
  - "[[lecture-10032025112014|Lecture 10032025112014]]"
  - "[[lecture-13042026091404|Lecture 13042026091404]]"
---
# ACL
---
## Introduzione
> Un **ACL** (**Access Control List**) è un insieme di regole di [[access-control|access control]] che mediante una _matrice di accesso_ permette di legare i soggetti con gli oggetti del sistema e i permessi associati.
> Nel contesto delle reti di calcolatori, e' un insieme di regole di firewalling per consentire o non consentire l'entrata di certi [[pacchetto|pacchetti]] nella rete locale. Viene usata di solito all'interno dei [[router|router]] come sorta di [[firewall|firewall]].

## Sicurezza dei sistemi
Ad ogni oggetto $o_{i}$ viene associata una ACL, quindi una lista di permessi per ogni soggetto $s_{j}$:
![[acl.png]]

In Linux esistono 3 soggetti associati ad ogni oggetto:
- _user_ - e' l'owner del file
- _group_ - e' il gruppo proprietario del file
- _other_ - tutti gli altri

## Firewalling
Un esempio di regola di ACL potrebbe essere:

| action | source address       | dest address         | protocol | source port | dest port | flag bit |
| ------ | -------------------- | -------------------- | -------- | ----------- | --------- | -------- |
| allow  | 222.22/16            | outside of 222.22/16 | TCP      | > 1023      | 80        | any      |
| allow  | outside of 222.22/16 | 222.22/16            | TCP      | 80          | > 1023    | ACK      |
| allow  | 222.22/16            | outside of 222.22/16 | UDP      | > 1023      | 53        | ----     |
| allow  | outside of 222.22/16 | 222.22/16            | UDP      | 53          | > 1023    | ----     |
| deny   | all                  | all                  | all      | all         | all       | all      |

## Referenze