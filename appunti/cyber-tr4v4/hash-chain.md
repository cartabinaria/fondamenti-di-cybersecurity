---
tags:
  - category/note
  - status/finished
  - topic/cybersecurity
date: 08-05-2026 13:58:28
links:
  - "[[lecture-04052026091257|Lecture 04052026091257]]"
---
# Hash chain
---
## Introduzione
> Una **hash chain** e' una catena di [[hash|hash]] di [[password|password]] calcolate in modo da renderle dipendenti in sequenza, usata per costruire le [[rainbow-table|rainbow tables]].

## Funzionamento
Richiede di avere due funzioni:
- **[[funzione-hash|funzione hash]] $H$** che dal dominio delle password va a quello degli hash;
- **funzione di riduzione $R$** che dal dominio degli hash va a quello delle password.

Per calcolare una catena di lunghezza $k$, si parte da una password $p$, quindi:
1. si calcola $H(p) = h$;
2. si calcola $R(h) = p'$;
3. si ripete il tutto per $k$ volte a partire da $p'$.

Alla fine, l'unica cosa che si salva realmente della catena e' $p$ e $p^{k}$, ovvero **l'inizio e la fine della catena**.

Fondamentalmente quindi, una hash chain sara' una tabella con 2 colonne: inizio e fine catena.

A questo punto, una volta che si conosce l'hash $h_{x}$, per ricavare la password associata si prosegue nel seguente modo:
1. si computa $p_{x} = R(h_{x})$;
2. si verifica se $p_{x}$ e' nella colonna finale di una qualche catena;
3. se non lo e' si calcola $h_{x}' = H(p_{x})$ e si torna al punto $1$;
4. se invece lo e', abbiamo trovato la catena in cui e' presente la password dell'hash;
5. quindi si ripercorre tutta la catena a partire dalla prima colonna, e non appena si trova l'hash che fa match con $h_{x}$, la password precedente e' quella che si stava cercando.

### Trade-off
Chiaramente:
- **se $k$ e' basso**, la catene saranno piu' corte, per cui per coprire uno spazio di password maggiore avremo bisogno di piu' righe, e quindi di **piu' spazio da memorizzare**;
- **se $k$ e' alto**, le catene saranno piu' lunghe, per cui il calcolo sara' maggiore e quindi servira' **piu' tempo per calcolare**.

## Problemi
Le hash chain, basandosi sulle funzioni hash, soffrono degli stessi loro problemi: le [[collisione-hash|collisioni hash]].

In questo contesto questo problema si presenta quando:
- $H(p') = H(p'')$, oppure
- $R(h') = R(h'')$.

In entrambi i casi, le catene si fondono, creando i seguenti problemi:
- si spreca spazio inutile, dato che **catene diverse cominciano a coprire lo stesso spazio di password**;
- si creano falsi positivi, ovvero **catene che non includono la password corretta anche se la fine coincide con un hash**;

Inoltre, e' necessario scegliere una funzione $R$ appropriata, per cercare di **ridurre da degli hash delle password verosimili**; inoltre $R$ non dev'essere resistente alle collisioni, dato che deve mappare verso plaintext verosimile.

Per risolvere questi problemi, si utilizzano le [[rainbow-table|rainbow tables]].

## Referenze