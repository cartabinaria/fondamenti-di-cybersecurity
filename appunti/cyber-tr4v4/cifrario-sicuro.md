---
tags:
  - category/note
  - status/finished
  - topic/cybersecurity
date: 25-02-2026 11:45:53
links:
  - "[[lecture-23022026091407|Lecture 23022026091407]]"
---
# Cifrario sicuro
---
## Introduzione
Assumendo che l'attaccante (minaccia) possa solo fare _ciphertext only attack_ (leggere solo i messaggi cifrati), allora secondo [[shannon|Shannon]] **un cifrario puo' essere considerato sicuro se non e' possibile carpire alcuna informazione sul plaintext guardando il ciphertext**.

Formalmente:
> La **Information Theoretic Security** di Shannon afferma che un cifrario $(E, D)$ su $(K, P, C)$ ha una **segretezza perfetta** (**perfect secrecy**) se $\forall m_{0}, m_{1} \in P$ con $\text{len}(m_{0}) = \text{len}(m_{1})$ e $\forall c \in C$ allora
> $$\mathbb{P}(E(k, m_{0}) = c) = \mathbb{P}(E(k, m_{1}) = c)$$
> dove $k \sim \text{Unif}(K)$ ([[distribuzione-uniforme-discreta|uniforme]]).

<u>Nota bene</u>: non vengono fatte assunzioni sulla potenza computazionale dell'attaccante.

In altri termini, se ho un ciphertext $c$, non ho alcun modo di determinare se provenga dal plaintext $m_{0}$ o $m_{1}$, perche' _hanno la stessa probabilita' di essere cifrati in $c$_.

## Teorema
> Perfect secrecy $\implies$ $|K| \geq |P|$. Quindi, **se la chiave e' piu' piccola del plaintext, sicuramente il cifrario non ha segretezza perfetta**!

## Referenze