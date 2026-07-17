---
tags:
  - category/note
  - status/finished
  - topic/cybersecurity
date: 01-03-2026 20:58:29
links:
  - "[[lecture-27022026111035|Lecture 27022026111035]]"
  - "[[lecture-02032026091732|Lecture 02032026091732]]"
---
# DES
---
## Introduzione
> Il **DES** (**Data Encryption Standard**) e' un [[cifrario-di-blocco|cifrario di blocco]] sviluppato negli anni '70, che e' stato ampiamente utilizzato per la crittografia dei dati.

## Idea
Il nucleo di DES sono le [[rete-di-feistel|reti di Feistel]]. In particolare DES si compone di:
- una rete di Feistel a _16 iterazioni_;
- una chiave $k$ di _56 bits_, da cui vengono generate 16 sottochiavi $k_{1}, \cdots, k_{16}$ di 48 bits ciascuna;
- un input di 64 bits;
- un blocco iniziale di permutazione $IP$ e un blocco finale di permutazione $IP^{-1}$.

![[des-schema.png]]

## Dettaglio
### Chiave $k$
La chiave $k$ sarebbe realmente di 64 bits, ma in realta' 8 bits sono usati come [[bit-di-parita|bit di parita']], e quindi la chiave effettiva e' di 56 bits. Da questa chiave vengono generate 16 sottochiavi $k_{1}, \cdots, k_{16}$ di 48 bits ciascuna attraverso un processo di espansione: il **key expansion**.

![[des-key-expansion.png]]

Gli elementi dell'espansione sono i seguenti:
- $PC1$, una matrice di permutazione fissa, che fa scrumbling dei singoli bit dei 56 della chiave (non considerando quelli di parita'), andando a generare due sottochiavi, $C_{0}$ e $D_{0}$, di 28 bits ciascuna;
	- ![[des-key-expansion-pc1.png|240]]
- $PC2$, una matrice di permutazione fissa, che fa sempre scrumbling dei bit, andando a riunire le chiavi divise da $PC1$, e selezionando 48 bit dai 56 totali (ricorda, in $C_{0}$ e in $D_{0}$ non ci sono piu' i bit di parita');
    - ![[des-key-expansion-pc2.png|240]]
- _left shifts_, una funzione che fa shift a sinistra di una posizione se $i = 1, 2, 9, 16$, altrimenti shift di due posizioni.

#### Weak keys
DES e' notoriamente conosciuto per le sue **weak keys**, che sono chiavi che nella loro espansione fanno generare piu' di una sottochiave uguale! In particolare, sono queste 4:
- `0101010101010101`
- `FEFEFEFEFEFEFEFE`
- `E0E0E0E0F1F1F1F1`
- `1F1F1F1F0E0E0E0E`

### $IP$
Si tratta semplicemente di una matrice di permutazione fissa (_Initial Permutation_), che _prende i 64 bits di input e li permuta secondo un ordine predefinito_. L'output di questa matrice viene quindi passato alla rete di Feistel.
![[des-ip.png]]
![[des-ip-1.png]]

### Round function $F$
Ogni singola funzione $f_{i}$ delle 16 iterazioni, e' una funzione di round $F(k_{i}, x)$, dove:
- $k_{i}$ e' la sottochiave di 48 bits generata dall'espansione della chiave $k$;
- $x$ e' un input di 32 bits, una delle due meta' del blocco di input da 64 bits.

![[des-round-function.png]]

Questa funzione si compone di 4 passaggi:
- **Expansion**, in cui i 32 bits di input vengono espansi a 48 bits da una matrice di permutazione/espansione $E$, duplicando alcuni bit e permutandone l'ordine;
- **XOR**, in cui i 48 bits di output dell'espansione vengono messi in `XOR` con la sottochiave $k_{i}$;
- **S-boxes**, in cui i 48 bits di output dello `XOR` vengono divisi in 8 blocchi di 6 bits ciascuno, e ogni blocco viene passato a una specifica matrice di sostituzione (S-box), che mappa i 6 bits in un output di 4 bits;
	- ![[des-s-box.png|582]]
	- le S-boxes sono implementate tramite [[lut|LUT]] (Look-Up Tables), quindi in modo molto efficiente;
- **P-boxes**, in cui i 32 bits di output delle S-boxes vengono permutati da una matrice di permutazione fissa $P$.

E' importante notare che i valori delle S-boxes e delle P-boxes non sono scelti a caso! Formalmente, **una S-box dev'essere una funzione booleana vettoriale _non-lineare_, altrimenti il cifrario risulterebbe insicuro**.

## Miglioramenti
Con la **DES Challenge** si e' potuto mostrare al mondo le debolezze di DES, e quindi si sono cercati dei miglioramenti. I due metodi piu' noti sono:
- _cifratura multipla_, in cui si cifra il plaintext piu' volte con chiavi diverse, per esempio [[2des|2DES]] o [[3des|3DES]];
- _[[desx|DESX]]_, in cui si fa un `XOR` con una chiave aggiuntiva prima e dopo la cifratura con DES.

## Attacchi
Gli attacchi principali su DES sono:
- **meet-in-the-middle-attack**;
- [[crittanalisi-differenziale|crittanalisi differenziale]] (non funziona!);
- [[crittanalisi-lineare|crittanalisi lineare]] (anche questo non funziona!).

## Referenze
- [[effetto-valanga|Effetto valanga]]