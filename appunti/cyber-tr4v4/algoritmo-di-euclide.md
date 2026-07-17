---
tags:
  - category/note
  - status/finished
  - topic/cybersecurity
date: 17-03-2026 18:57:31
links:
  - "[[lecture-13032026111916|Lecture 13032026111916]]"
---
# Algoritmo di Euclide
---
## Introduzione
> L'**[[algoritmo|algoritmo]] di Euclide** e' un algoritmo in grado di trovare il massimo comune divisore $\gcd$ tra due numeri $a, b$.

## Algoritmo
![[algoritmo-di-euclide.png]]

Puo' anche essere definito ricorsivamente in questo modo:
$$\gcd(a, b) = \gcd(b, a \mod{b})$$

## Versione estesa
Si sa che per ogni intero $a, b$, esistono $x, y$ tali che
$$ax + by = \gcd(a, b)$$

Questi $x, y$ possono essere trovati usando la **versione estesa dell'algoritmo di Euclide**.
L'idea e' semplice:
- si mantengono i risultati delle divisioni e dei resti dell'algoritmo di Euclide;
- si procede a ritroso a partire dall'ultima divisione, sostituendo i valori delle equazioni precedenti fino a isolare $a$ e $b$, e i rispettivi coefficienti $x$ e $y$.

## Referenze