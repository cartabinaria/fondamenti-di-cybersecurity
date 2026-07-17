---
tags:
  - category/note
  - status/finished
  - topic/cybersecurity
date: 19-04-2026 15:15:03
links:
  - "[[lecture-17042026111903|Lecture 17042026111903]]"
---
# WEP
---
## Introduzione
> Per **WEP** (**Wired Equivalent Privacy**) si intende un meccanismo di autenticazione e confidenzialita' adottato dal [[wi-fi|Wi-Fi]].

Non e' minimanente sicuro.

## Funzionamento
Funziona in 2 modalita':
- **shared-key authentication**;
- **open-system authentication**.

### Shared key
Tutti i dispositivi nella rete condividono una chiave segreta. L'autenticazione si ottiene mediante **four-step challenge-response handshake**, e serve per dimostrare che il client che si vuole connettere possieda la password del Wi-Fi:
![[wep-shared-key.png]]

<u>Nota bene</u>: il client invia all'access point il _[[nonce|nonce]]_ $n$ cifrato con la password usando l'[[rc4|RC4]]!

E' estremamente poco sicuro: si puo' attaccare con attacchi KPA (known plaintext) e ricavare la chiave da tutte le autenticazioni.

### Open system
In questo caso non c'e' una verifica del possesso della chiave segreta con l'utilizzo di un challenge: **quando il client si connette, se sa la password e' in grado di decifrare i messaggi inviati dall'access point; altrimento no**!
I pacchetti che invia all'access point, se non cifrati con la chiave giusta, saranno scartati.

Funziona sempre usando RC4, basato sulla chiave $k$ e sul vettore di inizializzazione $v$, e genera un flusso di chiavi $RC4(v, k)$.
Assumiamo che Alice voglia inviare il messaggio $m$ a Bob:
1. Alice calcola il checksum di 32 bit $c(m)$;
2. il plaintext e' allora $p = (m, c(m))$;
3. cifra $p$ usando RC4, e ottiene quindi $c = p \oplus RC4(v, k)$;
4. trasmette $(c'=v, c)$;

Il problema e' che dopo 30000 pacchetti trasmessi, la probabilita' di collisione e' altissima[^1] : ricapitera' lo stesso $IV$, e sara' possibile fare attacchi statistici.
Inoltre, catturando pacchetti con un $IV$ noto e' possibile fare _replay attack_ con messaggi vecchi, aumentando il traffico.

## Referenze

[^1]: [[paradosso-del-compleanno|paradosso del compleanno]]!
