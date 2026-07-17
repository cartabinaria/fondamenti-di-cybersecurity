---
tags:
  - category/note
  - status/finished
  - topic/reti-di-calcolatori
  - topic/cybersecurity
date: 09-03-2025 11:51:12
links:
  - "[[lecture-17022025110943|Lecture 17022025110943]]"
  - "[[lecture-18022025152022|Lecture 18022025152022]]"
  - "[[lecture-10032025112014|Lecture 10032025112014]]"
---
# Sicurezza di rete
---
## Principi
La sicurezza di [[rete|rete]] si basa sui seguenti principi:
- [[aaa|AAA]]
- [[cia|CIA]]
- [[anonimato|Anonimato]]

## Comunicazione
Per poter rispettare i principi sopra citati, la comunicazione tra utenti delle reti deve avvenire in modo sicuro. In particolare, gli utenti comunicano del _plain text_, ma su [[internet|internet]] viaggia del _chiper text_. La scienza che studia come implementare un meccanismo del genere si chiama [[crittografia|crittografia]].

Per garantire l'[[autenticazione|autenticazione]], invece, si utilizza un meccanismo (che si scoprira' essere connesso alla crittografia) chiamato [[firma-digitale|firma digitale]], in connubio con le [[certification-authorities|CA]].

## Formula finale
Unendo i meccanismi di confidenzialita' con quelli di autenticazione e di integrita', otteniamo che se $B$ vuole comunicare con $A$, allora inviera'
$$K_{A}^{+}(m, K_{B}^{-}(h(m)))$$

Questa formula e' equivalente in termini di sicurezza con
$$K_{A}^{+}(m), K_{B}^{-}(h(m))$$
? La risposta e' teoricamente si' ma praticamente no: nel secondo caso ci sarebbe la possibilità che uno dall'[[funzione-hash|hash]] decifrato (si conosce la chiave pubblica di $B$) sia in grado di ricavare il messaggio; nella pratica pero' questo non ha comunque senso perché $h$ è una [[funzione-one-way|funzione one-way]].

Tuttavia, **Trudy potrebbe sempre intercettare la comunicazione e modificare qualche bit**, causando [[dos|DoS]]. Non c'e' soluzione a questo problema.

## Referenze
- [[attacco-informatico|Attacco informatico]]
- [[posta-elettronica-sicura|Posta elettronica sicura]]
- [[ssl|SSL]]
- [[ipsec|IPsec]]
- [[firewall|Firewall]]
- [[acl|ACL]]
- [[dataleak|Dataleak]]