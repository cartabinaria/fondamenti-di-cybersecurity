---
tags:
  - category/note
  - status/finished
  - topic/cybersecurity
date: 09-03-2026 13:14:30
links:
  - "[[lecture-09032026092159|Lecture 09032026092159]]"
  - "[[lecture-13032026111916|Lecture 13032026111916]]"
---
# Scambio di chiavi
---
## Introduzione
Le chiavi si dividono in:
- **chiavi simmetriche/condivise/uniche** --> stabilita tra sender e receiver, utilizzate nella [[crittografia-simmetrica|crittografia simmetrica]];
- **chiavi pubbliche e chiavi private** --> una coppia di chiavi utilizzata nella [[crittografia-asimmetrica|crittografia asimmetrica]].

In entrambi i casi e' necessario comprendere in che modo sono scambiate queste chiavi.

## Definizione
> Per **scambio di chiavi** intendiamo una procedura in cui le parti comunicanti (sender e receiver) cooperano per stabilire, definire e scambiarsi una chiave.

Per la crittografia simmetrica, le due parti devono scambiarsi la _stessa_ chiave (unica, condivisa). Inoltre, sempre per la crittografia simmetrica, **vorremmo anche che le chiavi cambiassero frequentemente**, per limitare le probabilita' di successo di eventuali attacchi e limitare i dati compromessi se l'attaccante trova la chiave.

## Casi
### Distribuzioni di chiavi pubbliche
In questo caso ovviamente teniamo a mente che siamo nel mondo della crittografia asimmetrica.

Pensiamo a 2 soluzioni diverse:
- _annuncio pubblico_;
- _dynamic directory_ gestito da CA;

#### Annuncio pubblico
L'idea e' quella di fare un _broadcast_ di trasmissione della propria chiave pubblica a tutti quanti: se $A$ vuole entrare nella rete di comunicazione, comunica a tutti la propria $PU_{A}$.

Il problema di questo approccio e' che ovviamente chiunque puo' spacciarsi per il proprietario di una certa chiave pubblica, e quindi comunicare con altri fingendo di essere qualcun altro: _non c'e' certezza dell'autenticazione degli interlocutori_.

#### Dynamic directory 
Qui invece c'e' un responsabile che gestisce questa [[database|base di dati]], un'entita' affidabile, ufficiale e riconosciuta.

Il funzionamento e' riassunto nel seguente schema:
![[distribuzione-chiavi-pubbliche-mediante-ca.png]]

Possiamo riassumerlo quindi nei seguenti passi:
1. $A$ vuole parlare con $B$, e quindi vuole la sua chiave pubblica;
2. quindi chiede alla CA la chiave pubblica di $B$, concatenandoci un timestamp $T_{1}$;
	- per limitare attacchi di tipo replay
3. l'autorita' risponde ad $A$ con la chiave pubblica di $B$ cifrata con la sua chiave privata;
	- in questo modo $A$ puo' verificare decifrando con la chiave pubblica della CA che effettivamente sia una CA vera e propria
4. adesso $A$ invia a $B$ un messaggio cifrato con la sua chiave pubblica (cosi' solo $B$ puo' leggerlo) contenente un identificatore $ID_{A}$ e un nonce $N_{1}$;
	- anche questo per minimizzare la probabilita' di successo di eventuali attacchi
5. ora $B$ deve conoscere la chiave pubblica di $A$ per rispondere --> fa la stessa cosa con CA;
6. una volta ottenuta dalla CA, risponde ad $A$ con la concatenazione di $N_{1}$ e un nuovo nonce $N_{2}$, il tutto cifrato con la chiave pubblica di $A$;
	- cosi' $A$ puo' essere sicuro che sia proprio $B$ a rispondere
7. $A$, infine, risponde a $B$ con il suo nonce $N_{2}$ cifrato con la chiave pubblica di $B$ --> questo serve a $B$ per essere sicuro che sia proprio $A$ con cui sta comunicando

Ci sono pero' una serie di difetti importanti di questo sistema:
- se tutti gli utenti hanno bisogno di passare dalla CA per comunicare, questa rappresenta un _bottleneck_[^1];
- inoltre, se appunto un attaccante riesce ad avere la chiave privata di CA, puo' manomettere la directory.

#### Soluzione definitiva
La soluzione utilizzata oggigiorno e' quella dei **[[certificato-digitale|certificati]]**.

### Distribuzioni di chiavi private
L'idea _naive_ di distribuzioni delle chiavi private (simmetriche) su una rete composta da $n$ utenti consiste nel salvare per ogni coppia di utenti una chiave: **ogni coppia di utenti e' costituita da una chiave di comunicazione**. Di conseguenza, il numero di chiavi totale e' $O(n^{2})$.

#### TTP
Per **TTP** si intende _Trusted Third Parties_, ossia un intermediario che consente a due attori di scambiarsi le chiavi private:
![[ttp.png]]

Di base, ogni entita' (attore) ha una chiave simmetrica scambiata con il TTP, e tramite esso comunica/scambia una chiave di sessione con le altre entita' con cui vuole comunicare.

Ci sono 4 modalita':
![[ttp-scambio-chiavi-private.png]]

Questo protocollo rimane comunque insicuro contro _attacchi di tipo replay_. Altro problema: **la TTP conosce tutte le chiavi di sessione**, costituendo uno [[spof|SPOF]]!

Esiste un modo per scambiarsi informazioni senza usare un sistema centralizzato? Si': la [[crittografia-asimmetrica|crittografia asimmetrica]].

## Referenze

[^1]: uno [[spof|SPOF]]!
