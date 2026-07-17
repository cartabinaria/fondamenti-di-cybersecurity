---
tags:
  - category/note
  - status/finished
  - topic/cybersecurity
date: 07-05-2026 10:28:05
links:
  - "[[lecture-27042026091456|Lecture 27042026091456]]"
---
# Buffer overflow
---
## Introduzione
Si tratta di un tipo di attacco che sfrutta dei [[bug|bug]] software per aggirare controlli, fare _privilege escalation_ e conseguentemente per far eseguire codice malevolo.

## Definizione
> Il **buffer overflow** e' una _condizione su un'interfaccia in cui e' possibile inserire piu' input in un buffer_ (o in un'area di conservazione dei dati) rispetto _alla capacita' assegnata_, sovrascrivendo altre informazioni.

Gli avversari sfruttano questa condizione per
- mandare in crash il sistema;
- inserire codice appositamente predisposto che consenta loro di ottenere il controllo del sistema.

## Categorie
### Stack buffer overflow
Si tratta di un tipo di attacco di buffer overflow che si verifica all'interno di un [[record-di-attivazione|frame]] di una [[funzione-informatica|funzione]] nello [[stack|stack]]. Viene anche chiamato **stack smashing**.

Fondamentalmente, se il programma e' scritto male e permette di memorizzare dati in un buffer (solitamente [[array|array]]), nello stack, oltre la sua dimensione, e' possibile sovrascrivere posizioni di memoria adiacenti, come per esempio anche l'_indirizzo di ritorno del frame_!

Esempio che causa [[dos|DoS]]:
```C
void print(string s) {
	string buffer[32];
	
	// QUI E' IL PROBLEMA!
	// Scriviamo in `buffer` tutto `s`, senza controllare
	// che questa sia lunga al massimo quanto `buffer`.
	strcpy(buffer, s);
	puts(buffer);
}

void main(integer argc, strings argv) {
	for (; argc > 0; argc--) {
		print(argv[argc]);
	}
}
```

Esempio:
```C
void print(char* s) {
	char command[256] = "ls /home/";
	char buffer[10] = {0};

	strcpy(buffer, s);
	buffer[9] = 0;
	
	printf("%s\t%s\n", buffer, command);
	
	system(command);
}

int main(int argc, char **argv) {
	print("ciao"); // OUTPUT: ciao    ls /home/
				   //         tr4v4/  user2/    ...
	
	print("xxxxxxxxxxcat /etc/passwd");
	
	return 0;
}
```

#### Shellcode
Questo e' il tipo di attacco che sfrutta proprio lo stack buffer overflow: al posto di sovrascrivere l'indirizzo di ritorno con un [[pc|PC]] illegale (che provocherebbe `Segmentation Fault`), _ci si va a sovrascrivere l'indirizzo di un codice malevolo_, chiamato appunto **shellcode**.

Formalmente
> Lo **shellcode** e' semplicemente codice macchina (ossia istruzioni macchina) che implementano le funzionalita' desiderate dall'attaccante.

Di conseguenza, **lo shellcode dev'essere scritto per la specifica architettura del [[cpu|processore]] e per lo specifico [[sistema-operativo|sistema operativo]] del sistema vittima**!

**Lo shellcode quindi viene scritto sullo stack nel momento del buffer overflow stesso, e si fa esondare cosi' tanto il buffer da arrivare a sovrascrivere lo stesso indirizzo di ritorno del frame con quello in cui inizia lo shellcode**! In questo modo quando la funzione ritornera', verra' eseguito lo shellcode.

Un esempio semplicissimo di shellcode, da cui tra l'altro origina il nome, e' il seguente:
```C
{
	exec("/bin/sh", NULL);
}
```

<u>Nota bene</u>: **lo shellcode viene eseguito con gli stessi privilegi del programma vulnerabile**!

##### Restrizioni
Ma cosa puo' contenere lo shellcode di preciso? Ci sono delle restrizioni generiche:
1. **lo shellcode dev'essere indipendente dalla posizione**;
	- infatti devono essere usati solo indirizzi relativi, o meglio _offset_ rispetto all'indirizzo di istruzione corrente;
	- questo perche' l'attaccante non e' in grado di specificare con precisione l'indirizzo di partenza delle istruzioni nello shellcode;
2. **lo shellcode non puo' contenere valori `NULL`**;
	- in [[c|C]], la stringa termina col carattere `NULL`, per cui `strcpy` si fermerebbe prima se ci fosse questo carattere in mezzo allo shellcode;
3. **lo shellcode deve sopravvivere a qualsiasi modifica apportata dal programma**
	- cosa succede se il programma decifra la stringa prima di copiarla? o se trasforma le lettere minuscole in maiuscolo? ecc...

##### Problemi
Come facciamo a indovinare esattamente l'indirizzo da sovrascrivere corrispondente a dove inizia lo shellcode? Gli indirizzi dello stack cambiano spesso, ogni volta che il programma viene eseguito; inoltre bisognerebbe l'intera situazione dello stack per sapere esattamente l'indirizzo del frame corrente!

Quello che si fa allora e' di solito _creare una slitta di `NOP`_: il **`NOP` Sled**. Davanti allo shellcode vero e proprio, **si crea una slitta di `0x90`, che sono operazioni che semplicemente non fanno fare nulla alla CPU**: in questo modo, **se il puntatore atterra in un punto qualsiasi della slitta** (_con maggiore probabilita' se questa e' grande_!) **allora la CPU eseguira' operazioni nulle finche' non arriva allo shellcode**.

## Difesa
Esistono parecchi meccanismi di difesa contro attacchi di questo tipo:
- **stack canaries**
- **stack non eseguibile**
- **ASLR**

### Stack canaries
Il [[compilatore|compilatore]] aggiunge valori speciali (_sentinel value_) sullo stack prima di ogni indirizzo di ritorno (IP) salvato. Quindi, all'uscita della funzione viene controllato questo valore canary, e se e' stato alterato il programma esce con un errore.

```C
void print(string s) {
	__set_stack_canary(random());
	string buffer[32];
	strcpy(buffer, s);
	puts(buffer);
	__check_stack_canary();
}
```

### Stack non eseguibile
Semplicemente **si imposta il segmento di stack come memoria di sola lettura/scrittura**, escludendo la possibilita' di eseguire istruzioni sullo stack: difende dagli attacchi di shellcode, ma non dai generali buffer overflow.

### ASLR
Questa tecnica, ASLR (_Address-space Layout Randomization_), _modifica la posizione del codice e dei dati all'interno della memoria quando questa viene caricata_: rende piu' difficile per l'attaccante indovinare la destinazione del buffer sullo stack.

## Referenze