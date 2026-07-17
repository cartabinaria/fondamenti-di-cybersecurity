---
tags:
  - category/note
  - status/finished
  - topic/cybersecurity
date: 19-04-2026 11:37:13
links:
  - "[[lecture-13042026091404|Lecture 13042026091404]]"
---
# Access control
---
## Introduzione
> L'**access control** e' un insieme di metodi per garantire l'autorizzazione di un utente autenticato all'interno di un sistema.

### Elementi
Si compone dei seguenti elementi:
- **soggetto**
- **oggetto**
- **diritto di accesso**

## Politiche
Le politiche principali di controllo degli accessi sono 3:
- [[dac|DAC]]
- [[mac|MAC]]
- [[rbac|RBAC]]

## Caso UNIX
In [[unix|Unix]]/[[linux|Linux]], l'access control e' gestito sulla base della politica DAC, mediante un mix di tecniche:
- [[acl|ACL]];
	- i permessi sono elargibili con il comando `chmod`
- [[capabilities|Capabilities]].

![[acl-vs-capability.png]]

Questi sistemi analizzano i permessi nel seguente ordine:
1. UID - id dell'utente e proprietario del file;
2. GID - id del gruppo del file;
3. ...

Il problema di queste politiche e' che si possono creare delle complicanze contro-intuitive:
- l'utente appartiene a un gruppo che non puo leggere il file, ma ne e' il proprietario $\implies$ _l'utente non puo' leggere il suo stesso file_;

Per cambiare il proprietario (o il gruppo) di appartenenza di un file ci sono i comandi `chown` e `chgrp`.

I bit dei permessi per le cartelle sono:
- `x` - possibilita' di entrare nella cartella;
- `w` - possibilita' di eliminare i file nella cartella (anche se non ne abbiamo il permesso di scrittura!);
- `r` - possibilita' di leggere il contenuto della cartella;

Se ad una cartella impostiamo i permessi `711`, significa che noi proprietari possiamo fare tutto, mentre il gruppo della cartella e gli altri possono solo entrarci dentro, senza leggere i file che ci sono ne' eliminarli! Stiamo facendo _security by obscurity_.

Permessi speciali:
- `setuid` - puo' essere eseguito con i permessi del proprietario del file anziche' dell'utente che lo sta eseguendo;
- `setgid` - assegna ai file creati all'interno di una cartella con questo bit attivo il gruppo d'appartenenza della cartella --> tutti i file di quella cartella apparterranno automaticamente allo stesso gruppo;
- `sticky` - su una cartella permette di eliminare dei file al suo interno solo al suo owner.

Il comando `sudo` funziona proprio con `setuid`. E' un bit estremamente pericoloso (come anche `setgid`) perche' un utente malevolo potrebbe far eseguire un programma malevolo con i permessi di root.

## Referenze