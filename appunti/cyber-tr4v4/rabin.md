---
tags:
  - category/note
  - status/finished
  - topic/cybersecurity
date: 09-04-2026 17:00:32
links:
  - "[[lecture-30032026091529|Lecture 30032026091529]]"
---
# Rabin
---
## Introduzione
I passi sono i seguenti:
- generazione delle chiavi di Bob
	- genera 2 primi grandi distinti $p, q$ tali che $p \mod{4} = q \mod{4} = 3$
	- calcola $n = pq$
	- la chiave pubblica e' $n$
	- la chiave privata e' $(p, q)$
- quando Alice vuole inviare $m$ a Bob
	- calcola il ciphertext $c = m^{2} \mod{n}$
	- invia $c$ a Bob
- quando Bob riceve $c$ da Alice
	- computa $m_{p} = c^{\frac{p+1}{4}} \mod{p}$
	- computa $m_{q} = c^{\frac{p+1}{4}} \mod{q}$
	- trova $y_{p}, y_{q}$ tali che $y_{p}p + y_{q}q = 1$ (usando l'[[algoritmo-di-euclide-versione-estesa|algoritmo di Euclide esteso]])
	- computa $r = (y_{p}pm_{q} + y_{q}qm_{p}) \mod{n}$
	- computa $s = (y_{p}pm_{q} - y_{q}qm_{p}) \mod{n}$
	- uno tra $r, s, -r, -s$ e' il messaggio originale $m$

I vantaggi riguardano chiaramente l'efficienza nella cifratura rispetto all'[[rsa|RSA]]... La sia sicurezza si fonda sul fatto che computare $m$ da $c$ conoscendo $n$ e' computazionalmente equivalente al problema della fattorizzazione (che e' dimostrato essere _hard_).

## Referenze