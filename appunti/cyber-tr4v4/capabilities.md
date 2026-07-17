---
tags:
  - category/note
  - status/finished
  - topic/cybersecurity
date: 19-04-2026 12:07:02
links:
  - "[[lecture-13042026091404|Lecture 13042026091404]]"
---
# Capabilities
---
## Introduzione
> Le **capabilities**, in [[unix|Unix]]/[[linux|Linux]], sono un sistema di [[access-control|access control]] perpendicolare alle [[acl|ACL]], in cui ad ogni soggetto e' associata una lista di _token_/_ticket_, in grado di rappresentare un determinato oggetto sul quale si ha l'accesso.

Quindi una capability specifica gli oggetto e le operazioni autorizzati per un particolare utente, e l'utente puo' prestare o cedere questi token ad altri utenti, secondo la politica [[dac|DAC]].

Di solito, in Linux, i file aperti sono delle capability: a seguito della [[system-call|syscall]] `open`, viene restituito un [[file-descriptor|file descriptor]], che e' appunto una capability.

## Integrita'
L'integrita' dei token dev'essere protetta e garantita: il token dev'essere **irrefutabile**.

## Referenze