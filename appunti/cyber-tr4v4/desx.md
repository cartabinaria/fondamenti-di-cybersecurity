---
tags:
  - category/note
  - status/finished
  - topic/cybersecurity
date: 03-03-2026 19:49:36
links:
  - "[[lecture-02032026091732|Lecture 02032026091732]]"
---
# DESX
---
## Introduzione
> Il **DESX** e' un metodo per migliorare la sicurezza di [[des|DES]], che consiste nell'applicare DES e delle operazioni di `XOR` con un totale di 3 chiavi.

L'idea alla base di DESX e' quella di fare un `XOR` con una chiave aggiuntiva prima e dopo la cifratura con DES:
$$EX(k_{1}, k_{2}, k_{3}, m) = k_{1} \oplus E(k_{2}, m \oplus k_{3})$$
con key-length pari a _184 bits_ (64 bits per $k_{1}$, 56 bits per $k_{2}$, 64 bits per $k_{3}$).

<u>Nota bene</u>: $k_{1}$ e $k_{3}$ sono a 64 bit perche' devono fare lo `XOR` rispettivamente con il ciphertext e con il plaintext, che su DES e' a blocchi di 64 bit!

Se uso la stessa chiave piu' di una volta, la cifratura diventa insicura: per esempio, $k_{1} \oplus E(k_{2}, m)$ e $E(k_{2}, m \oplus k_{1})$ sono insicuri.

In generale, il costo di un attacco e' di $2^{120}$ (non migliora di tanto rispetto a [[3des|3DES]]).

## Referenze