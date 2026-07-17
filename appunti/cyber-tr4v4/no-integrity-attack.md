---
tags:
  - category/note
  - status/finished
  - topic/cybersecurity
date: 01-03-2026 20:42:54
links:
  - "[[lecture-27022026111035|Lecture 27022026111035]]"
---
# No integrity attack
---
## Introduzione
> Il **no integrity attack** e' un [[attacco-informatico|attacco informatico]] ai danni di un [[cifrario-di-flusso|cifrario di flusso]], che si verifica _quando un attaccante riesce a modificare un messaggio cifrato senza essere rilevato_. In questo caso, infatti, **e' possibile sfruttare la mancanza di integrita' del cifrario per alterare il messaggio originale**.

Il caso piu' eclatante si verifica in [[otp|OTP]], che infatti viene detto essere "malleabile".

## Esempio
Un'attaccante puo' tranquillamente intercettare il ciphertext $c$, farci lo `XOR` con una stringa $p$, e rispedire al destinatario $c \oplus p$. Quest'ultimo **non ha modo di verificare dal ciphertext che il messaggio ricevuto non e' piu' integro, per cui applichera' la funzione di decifratura, che come risultato restituira' $m \oplus p$**.
![[no-integrity-otp.png]]

Dato che il risultato decifrato da Bob sara' $m \oplus p$, e' anche possibile giocare con questo valore $p$:
- se Alice deve rispondere `1` o `0` (si' o no) a Bob, allora se mettiamo $p = 1$, Bob ricevera' $m \oplus 1 = \neg m$!
- se Alice deve inviare il suo IBAN a Bob per farsi spedire dei soldi, l'attaccante puo' impostare $p = IBAN_{ALICE} \oplus IBAN_{EVE}$ --> in questo modo Bob al posto di ricevere $IBAN_{ALICE}$ ricevera' $m \oplus p = IBAN_{ALICE} \oplus IBAN_{ALICE} \oplus IBAN_{EVE} = IBAN_{EVE}$!

## Referenze