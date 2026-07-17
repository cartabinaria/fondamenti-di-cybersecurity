---
tags:
  - category/note
  - status/finished
  - topic/reti-di-calcolatori
  - topic/cybersecurity
date: 09-03-2025 13:14:02
links:
  - "[[lecture-24022025111633|Lecture 24022025111633]]"
  - "[[lecture-30032026091529|Lecture 30032026091529]]"
---
# Firma digitale
---
## Introduzione
> L'idea della **firma digitale**, basata sul meccanismo "inverso" di cifratura dell'[[rsa|RSA]], consiste nell'inviare un messaggio $m$ accoppiato alla sua "firma", ovvero alla sua cifratura con la propria chiave privata $K^{-}$:
> $$(m, K^{-}(m))$$

## Funzionamento
Inviando la coppia $(m, K^{-}(m))$, cifrata magari con la chiave pubblica del destinatario per garantire confidenzialità, il destinatario puo' verificare l'[[autenticazione|autenticita']] del mittente: decifra con la sua chiave pubblica, e vede se il risultato e' esattamente $m$.
![[firma-digitale.png]]

### RSA
Possiamo appunto usare l'RSA per implementare la firma digitale, dividendo i casi in documenti piccoli e documenti grandi:
- _documenti piccoli_ - e' sufficiente firmare direttamente il documento con la propria chiave privata ![[rsa-based-digital-signature.png]]
- _documenti grandi_ - viene prima fatto l'[[funzione-hash|hash]] del documento, e poi firmato con la propria chiave privata ![[rsa-based-digital-signature-with-hash.png]]

## Integrita'
Di norma, **questo meccanismo garantirebbe anche l'integrita'**! Il problema e' la velocita' di cifratura: se $m$ e' troppo lungo, l'RSA potrebbe impiegare troppo tempo. Per questo, di solito si firma non $m$, ma un suo [[message-digest|digest]]: si fa l'[[funzione-hash|hash]] di $m$, che sara' piu' piccolo di $m$, e si cifra quello con la propria chiave privata.
Si invia quindi
$$(m, K^{-}(h(m))$$

## Motivazioni
La firma digitale garantisce la **non ripudiabilita'** dei messaggi: _se Bob invia un messaggio firmato, non puo' dimostrare in alcun modo che non e' stato lui ad inviarlo_ (assumendo che solo lui conosca la sua chiave privata).

## Referenze