---
tags:
  - category/note
  - status/finished
  - topic/reti-di-calcolatori
  - topic/cybersecurity
date: 09-03-2025 12:33:15
links:
  - "[[lecture-18022025152022|Lecture 18022025152022]]"
  - "[[lecture-13032026111916|Lecture 13032026111916]]"
  - "[[lecture-30032026091529|Lecture 30032026091529]]"
---
# RSA
---
## Introduzione
> L'**RSA** e' un algoritmo per la [[crittografia-asimmetrica|crittografia asimmetrica]] che _sfrutta le proprieta' dei [[numeri-primi|numeri primi]] e dell'[[aritmetica-modulare|aritmetica modulare]] per generare chiavi pubbliche e private sicure_ (tale che la funzione di cifratura sia [[funzione-one-way|one-way]]).

## Preliminari
Bisogna introdurre dei concetti fondamentali di teoria dei numeri, e in particolare di aritmetica modulare:
- [[modulo|Modulo]]
- [[congruenza|Congruenza]]
- $\mathbb{Z}_{n} = \{0, \cdots, n-1\}$
- [[algoritmo-square-and-multiply|Algoritmo square-and-multiply]]
- [[algoritmo-di-euclide|Algoritmo di Euclide]]
- [[inverso-modulare|Inverso modulare]]
- [[teorema-di-fermat-sui-numeri-primi|Teorema di Fermat sui numeri primi]]
- [[funzione-totiente-di-eulero|Funzione totiente di Eulero]]

## Definizione
> Formalmente parlando, l'**RSA funziona mediante permutazioni di [[tdf|TDF]]**. In particolare si compone di $(G, F, F^{-1})$ dove:
> - $G$ restituisce la coppia di chiavi $(p_{k}, s_{k})$;
> - $p_{k}$ definisce una funzione di permutazione $F(p_{k}, \cdot): X \to X$;
> - $F(p_{k}, x)$ e' la funzione di cifratura definita da $p_{k}$;
> - $F^{-1}(s_{k}, y)$ e' l'inversa di $F$;

Infatti, le funzioni sono definite nel seguente modo.

### $G$
- sceglie due primi grandi $p, q$, di circa 1024 bits;
- imposta $N = pq$, e poi sceglie $e, d$ con $1 < e < \Phi(N)$ tali che $ed \equiv 1 \mod{\Phi(N)}$;
- restituisce in output $p_{k} = (N, e)$, $s_{k} = (N, d)$;

Si nota quindi qui la potenzialita' di RSA: per ricavare $s_{k}$ da $p_{k}$ **bisognerebbe sapere il valore di $\Phi(N)$: praticamente impossibile da calcolare senza conoscere $p$ e $q$**! Conoscendo questi due, il calcolo e' trivialmente $\Phi(N) = (p-1)(q-1)$.

### $F(p_{k}, x)$
E' $F(p_{k}, x): \mathbb{Z}_{N}^{*} \to \mathbb{Z}_{N}^{*}$ e definita come
$$F(p_{k}, x) = x^{e} \mod{N}$$

### $F^{-1}(s_{k}, y)$
E' definita come
$$F^{-1}(s_{k}, y) = y^{d} \mod{N}$$

Infatti:
$$y^{d} \mod{N} = (x^{e})^{d} \mod{N} = x^{ed} \mod{N} = x^{k \Phi(N) + 1} \mod{N} = (x^{\Phi(N)})^{k} x \mod N = x$$

L'ultimo passaggio sfrutta il _teorema di Fermat generalizzato da Eulero_ per mostrare che $x^{\Phi(N)} \equiv 1 \mod{N}$.

<u>Nota bene</u>: il motivo per cui si assume che il messaggio $x$ sia coprimo a $N$ (ossia $x \in \mathbb{Z}_{N}^{*}$) e' perche' probabilisticamente parlando sara' quasi sicuramente questo il caso!

### One-way
Si assume che RSA sia una cosiddetta **permutazione one-way**, ovvero che per ogni algoritmo efficiente $A$, si ha che
$$\mathbb{P}\left(A(N, e, y) = y^{\frac{1}{e}}\right) < \text{negligible}$$
In altri termini, _la probabilita' che un algoritmo efficiente, dalla chiave pubblica e da un messaggio cifrato, ricavi il messaggio decifrato, e' molto bassa_.

Ma RSA lo e' veramente? Dimostriamolo: l'attaccante conosce $c = x^{e} \mod{N}$, e vuole computare $x$, ovvero $c^{\frac{1}{e}} \mod{N}$. Ora, l'algoritmo piu' veloce per fare cio', consiste nell'approccio della fattorizzazione di $N$ in $pq$, da cui e' facile ricavare $\Phi(N)$ e quindi anche $d$: ma **il problema della fattorizzazione di un numero e' in [[np|NP]]**!

### Plain
La versione standard dell'RSA, detta textbook RSA, e' **insicura**: in particolare non e' [[cifrario-semanticamente-sicuro|semanticamente sicuro]].

![[rsa-plain-attack.png]]

## Efficienza
L'RSA e' lento... Per velocizzarlo potremmo pensare ai 2 seguenti approcci:
- diminuire la dimensione della chiave privata $d$;
- diminuire la dimensione della chiave pubblica $e$.

Inoltre, la lunghezza delle chiavi (e quindi principalmente di $N$) dovrebbe essere comparabile con quella dei [[cifrario-simmetrico|cifrari simmetrici]].

### Diminuire $d$
Si dimostra che se $d < N^{0.292}$ allora RSA e' insicuro! Ossia, puo' essere trovata da $(N, e)$, la chiave pubblica.

### Diminuire $e$
Questo approccio premia invece di piu'! Infatti come valore minimo di $e$ si puo' usare $3$ (non $2$), ma si raccomanda un valore pari a
$$e = 655537 = 2^{16} + 1$$

Questo perche' la funzione di cifratura per questo specifico $e$ richiederebbe solo 17 moltiplicazioni, rendendo l'RSA particolarmente efficiente.

## Attacchi
Gli attacchi sull'RSA sono principalmente 3:
- _timing attack_ - il tempo che ci mette a decifrare un ciphertext puo' esporre $d$;
- _power attack_ - il consumo di potenza di una smartcard mentre computa $c^{d} \mod{N}$ puo' esporre $d$;
- _faults attack_ - un errore di computazione durante il calcolo di $c^{d} \mod{N}$ puo' esporre $d$;
	- una difesa comune e' quella di controllare l'output

## Problemi
### Generazione della chiave
Questo e' l'algoritmo "astratto" usato da OpenSSL RSA per generare le chiavi:
```R
prng.seed(seed)
p = prng.generate_random_prime()
prng.add_randomness(bits)
q = prng.generate_random_prime()
N = p*q
```

Il problema sta nel fatto che se all'inizio c'e' **bassa entropia nel [[prng|PRNG]], la stessa $p$ sara' generata per piu' dispositivi**, ma ci saranno diversi valori di $q$.

Questo porta ad avere due numeri $N_{1}, N_{2}$ calcolati rispettivamente come $pq_{1}$ e $pq_{2}$. Di conseguenza, si ha banalmente che
$$\gcd(N_{1}, N_{2}) = p$$

Allora possiamo ricavare $q_{1}, q_{2}$ con estrema facilita' (dividendo da $N_{1}$ e $N_{2}$).

Alcuni esperimenti hanno dimostrato che questo e' gia' avvenuto per lo 0.4% delle chiavi pubbliche rilasciate per [[https|HTTPS]].

## Formula generale
La magia sta nella formula, dimostrabile usando le leggi dell'aritmetica modulare
$$m = (m^{e} \mod n)^{d} \mod n$$

Da questo formula, inoltre, si ricava una proprieta' che si rivelera' fondamentale: **l'ordine di cifratura delle chiavi e' indifferente**. Nel senso che posso cifrare con la pubblica e poi decifrare con la privata, ma anche fare anche il contrario.
$$K^{-}(K^{+}(m)) = m = K^{+}(K^{-}(m))$$

Il procedimento opposto non e' affatto inutile: si tratta della [[firma-digitale|firma]], il meccanismo principale usato per l'[[autenticazione|autenticazione]]. Di fatto, **possiamo unire i due utilizzi della formula, per poter garantire confidenzialita' e autenticazione usando sempre l'RSA**.

Brevemente, se $A$ vuole inviare a $B$, garantendo confidenzialita' e autenticazione, inviera'
$$K_{B}^{+}(K_{A}^{-}(m))$$
ossia il messaggio cifrato prima con la sua chiave privata (autenticazione), e poi con la chiave pubblica di $B$ (segretezza).

Quindi, $B$, per decifrare il messaggio e verificare l'autenticazione di $A$, fara'
$$K_{A}^{+}(K_{B}^{-}(m))$$

## Utilizzi
L'algoritmo sopra descritto, e' estremamente inefficiente e costoso. Di solito, infatti, **l'RSA si utilizza soltanto per scambiare le chiavi di sessione**, ovvero [[crittografia-simmetrica|chiavi simmetriche]] che, una volta scambiate in modo sicuro, saranno usate per cifrare tutta la comunicazione usando algoritmi a chiave privata (piu' efficienti dell'RSA).

## Referenze