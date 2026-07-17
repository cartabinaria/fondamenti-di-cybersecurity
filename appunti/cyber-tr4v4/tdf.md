---
tags:
  - category/note
  - status/finished
  - topic/cybersecurity
date: 17-03-2026 20:31:33
links:
---
# TDF
---
## Introduzione
> Una **Trapdoor Function** (**TDF**) e' una _[[funzione-matematica|funzione]] che e' facile da calcolare in una direzione, ma estremamente complessa da invertire a patto di non sapere informazioni extra_ (chiave).
> Sommariamente:
> - $Y = f_{k}(X)$ e' facile da calcolare se $k$ e $X$ sono conosciuti
> - $X = f_{k}^{-1}(Y)$ e' facile da calcolare se $k$ e $Y$ sono conosciuti
> - $X = f_{k}^{-1}(Y)$ e' difficile da calcolare se $Y$ e' conosciuto ma $k$ no

## Sicuro
Consideriamo lo scenario seguente:
![[secure-tdf.png]]

> $(G, F, F^{-1})$ e' un TDF sicuro se per ogni algoritmo efficiente $A$:
> $$Adv_{OW}[A, F] = \mathbb{P}(x = x') < \epsilon$$
> con $\epsilon \to 0$.

In altre parole, se l'avversario conosce la chiave pubblica $p_{k}$ del challenger, e un ciphertext $y$ cifrato con $p_{k}$, dev'essere estremamente improbabile che riesca a risalire al plaintext $x$: perche' non conosce la chiave privata $s_{k}$.

## Rapporto con hash
Rispetto alle [[funzione-hash|funzioni hash]], le TDF devono poter essere invertire conoscendo una qualche informazione in piu': la chiave $k$!

## Referenze