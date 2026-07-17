---
tags:
  - category/note
  - status/finished
  - topic/cybersecurity
date: 03-03-2026 19:51:21
links:
  - "[[lecture-02032026091732|Lecture 02032026091732]]"
---
# Crittanalisi differenziale
---
## Introduzione
> La **crittanalisi differenziale** e' un metodo di attacco contro i [[cifrario-di-blocco|cifrari di blocco]], che si basa sull'analisi delle differenze tra coppie di testi in chiaro (plaintext) e i corrispondenti testi cifrati (ciphertext).

Ricade nei _chosen plaintext attack_ (CPA): si assume che l'attaccante conosca un certo numero di coppie $(m, c)$, ovvero plaintext e ciphertext.

## Tecnica
Confronta lo `XOR` tra due plaintext con lo `XOR` tra i corrispondenti ciphertext, e cerca di identificare delle correlazioni che possano rivelare informazioni sulla chiave segreta.
Quindi, le differenze
$$\Delta_{P} = P_{1} \oplus P_{2} \ \ \ \ \ \Delta_{C} = C_{1} \oplus C_{2}$$

sono poi usate per trarre informazioni sulle chiavi (certi bits).

Di fatto e' usata come tecnica per **ridurre la complessita' degli [[attacco-bruteforce|attacchi brute-force]]**, e puo' essere applicata a qualsiasi cifrario di blocco iterativo.

## Applicazioni
### DES
Su [[des|DES]] la crittanalisi differenziale non sembra avere effetto: le _S-boxes_ sono state progettate per resistere a questo tipo di attacco.

Anche solo per un DES con 8 rounds, un attacco di crittanalisi differenziale richiederebbe $2^{38}$ coppie $(m, c)$. Con DES a 16 round il numero di coppie richieste aumenta a $2^{47}$, rendendo l'attacco impraticabile.

## Referenze