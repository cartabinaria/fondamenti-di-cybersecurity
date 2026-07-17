---
tags:
  - category/note
  - status/finished
  - topic/cybersecurity
date: 25-02-2026 13:00:15
links:
  - "[[lecture-23022026091407|Lecture 23022026091407]]"
---
# RC4
---
## Introduzione
> **RC4** e' un [[cifrario-di-flusso|cifrario di flusso]] progettato da [[ron-rivest|Ron Rivest]], ampiamente utilizzato (almeno in passato) in vari protocolli di sicurezza, come [[ssl|SSL]]/[[tls|TLS]] e [[wep|WEP]], per la sua semplicita' e facilita' di implementazione.

## Funzionamento
Una chiave $K$ a lunghezza variabile compresa tra 1 e 256 bytes viene usata per inizializzare un vettore $S$ di 256 bytes. In particolare, $S$ viene costruito in modo tale che contenga una [[permutazione|permutazione]] di tutti i numeri da 0 a 255 in blocchi da 1 byte. Per cifratura e decifratura viene generato un byte $k$ dai 256 di $S$, e per ogni valore $k$ generato, $S$ viene permutato. Quel $k$ e' usato come chiave per fare lo `XOR` con il plaintext $m$.

In pseudocodice:
```R
# Inizializzazione di S
for i = 0 to 255 {
	S[i] = i;
	T[i] = K[i mod len(K)]; # K potrebbe essere lunga dagli 1 ai 256 bytes
}

j = 0;
for i = 0 to 255 {
	j = (j + S[i] + T[i]) mod 256;
	swap(S[i], S[j]);
}

# Generazione dello stream
i, j = 0;
while (true) {
	i = (i + 1) mod 256;
	j = (j + S[i]) mod 256;
	swap(S[i], S[j]);
	t = (S[i] + S[j]) mod 256;
	k = S[t]; # con questa chiave k si fara' lo xor con m
}
```

<u>Nota bene</u>: l'algoritmo fa uscire 1 byte alla volta! Quando si arriva alla lunghezza del messaggio $m$, allora si fa lo `XOR` con la concatenazione delle varie chiavi $k$.

Riassumendo:
![[rc4.png]]

## Debolezze
Proprio per la sua apparente semplicita' e facilita' di implementazione, purtroppo RC4 e' stato scoperto contenere delle forti vulnerabilita', che ne limitano l'utilizzo o che ne richiedono comunque una modifica.

In particolare:
- **bias nell'output iniziale** - e' stato dimostrato che, anche assumendo che la permutazione iniziale di $S$ sia uniforme tra tutte le $256!$, si ha che $\mathbb{P}(\text{2nd byte} = 0) = \frac{2}{256} = \frac{1}{128}$; per cui e' necessario scartare i primi $n$ valori generati dall'algoritmo perche' appunto biased verso 0, e bisogna considerare la keystream a partire da $n+1$;
- **altro bias nell'output iniziale**;
- **related-key attacks on WEP**;

E' per queste ragioni che oggi si preferisce usare [[estream|eStream]].

## Referenze