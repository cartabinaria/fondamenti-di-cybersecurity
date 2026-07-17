---
tags:
  - category/note
  - status/finished
  - topic/cybersecurity
date: 08-03-2026 19:55:01
links:
  - "[[lecture-06032026111911|Lecture 06032026111911]]"
---
# Cifrario semanticamente sicuro
---
## Introduzione
> Un cifrario si dice essere **semanticamente sicuro** se e' resistente all'attacco di _IND-CPA_, ovvero all'_Indistinguishability under Chosen-Plaintext Attack_.

## IND-CPA
Il gioco e' il seguente:
1. l'attaccante manda allo sfidante 2 messaggi, $m_{0}$ e $m_{1}$;
2. lo sfidante sceglie un bit $b$ a caso, cifra $m_{b}$ e restituisce il ciphertext all'attaccante;
3. l'attaccante, dopo aver ricevuto il ciphertext, prova ad indovinare $b$.

Se l'attaccante **riesce a indovinare $b$ con una precisione superiore al 50%, allora il cifrario non e' semanticamente sicuro**.

Formalmente, definiamo il cosiddetto "vantaggio dell'avversario" come
$$Adv_{SS}(A, Q) = | \mathbb{P}(EXP(0) = 1) - \mathbb{P}(EXP(1) = 1) |$$
dove:
- $A$ e' l'avversario;
- $Q = (E, D)$ e' il cifrario;
- $EXP(b)$ e' l'esperimento in cui l'avversario manda $m_{0}$ e $m_{1}$, lo sfidante sceglie un bit a caso $b$;
- $\mathbb{P}(EXP(0) = 1)$ e' la probabilita' che l'avversario scelga $1$ quando $b = 0$ --> **l'avversario perde**;
- $\mathbb{P}(EXP(1) = 1)$ e' la probabilita' che l'avversario scelga $1$ quando $b = 1$ --> **l'avversario vince**.

Quindi, in poche parole:
- quando $Adv_{SS}(A, Q) \to 1$ significa che l'avversario ha piu' probabilita' di vincere o di perdere;
- quando $Adv_{SS}(A, Q) \to 0$ significa che l'avversario ha la stessa probabilita' di vincere o di perdere --> **e' semanticamente sicuro**!

E' interessante notare che non e' semanticamente sicuro se l'avversario ha piu' probabilita' di perdere: infatti, in questo caso, **l'avversario puo' semplicemente invertire i suoi output e avere piu' probabilita' di vincere**!

## Formalizzazione
> La **sicurezza semantica** (one-time key) si ha $\iff$ $Adv_{SS}(A, Q) \to 0$, ovvero se $Adv_{SS}(A, Q) < \epsilon$ e quindi e' bassissimo per ogni $A$ efficiente[^1].

Ovvero se l'avversario ha la stessa probabilita' di vincere o di perdere: questo avviene se non e' in grado di ricavare alcuna informazione sul plaintext guardando il ciphertext.

Nel caso in cui si utilizzi invece **la stessa chiave piu' volte, cifrari che sono sicuri semanticamente con one-time key non lo diventano piu'**! Questo e' il caso di [[ecb|ECB]].

Infatti in questo caso l'attaccante puo' inviare piu' messaggi e capire le relazioni tra i ciphertext, sapendo che $k$ e' la stessa. Scegliendo adeguati messaggi e' in grado di rompere il gioco, e quindi di ottenere $Adv_{SS}(A, Q) \to 1$.

## Referenze

[^1]: e' qui la differenza con la [[cifrario-sicuro|segretezza perfetta]] di [[shannon|Shannon]]!
