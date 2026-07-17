---
tags:
  - "#category/moc"
  - "#status/finished"
  - topic/cybersecurity
date: 15-02-2026 20:56:35
---
# Fondamenti di cybersecurity
---
## Lezioni
### Ultima lezione
<!-- QueryToSerialize: TABLE WITHOUT ID file.link AS Lezione, file.inlinks AS Note FROM #category/lecture AND #topic/cybersecurity SORT file.ctime DESC LIMIT 1 -->
<!-- SerializedQuery: TABLE WITHOUT ID file.link AS Lezione, file.inlinks AS Note FROM #category/lecture AND #topic/cybersecurity SORT file.ctime DESC LIMIT 1 -->

| Lezione                                                           | Note                                                                                       |
| ----------------------------------------------------------------- | ------------------------------------------------------------------------------------------ |
| [[lecture-08052026111420|Lecture 08052026111420]] | <ul><li>[[fondamenti-di-cybersecurity|Fondamenti di cybersecurity]]</li></ul> |

<!-- SerializedQuery END -->


### Lista
<!-- QueryToSerialize: TABLE WITHOUT ID file.link AS Lezione, date AS Data FROM #category/lecture AND #topic/cybersecurity SORT file.ctime DESC -->
<!-- SerializedQuery: TABLE WITHOUT ID file.link AS Lezione, date AS Data FROM #category/lecture AND #topic/cybersecurity SORT file.ctime DESC -->

| Lezione                                                           | Data                |
| ----------------------------------------------------------------- | ------------------- |
| [[lecture-08052026111420|Lecture 08052026111420]] | 08-05-2026 11:14:20 |
| [[lecture-27042026091456|Lecture 27042026091456]] | 27-04-2026 09:14:56 |
| [[lecture-04052026091257|Lecture 04052026091257]] | 04-05-2026 09:12:57 |
| [[lecture-24042026111228|Lecture 24042026111228]] | 24-04-2026 11:12:28 |
| [[lecture-20042026105421|Lecture 20042026105421]] | 20-04-2026 10:54:21 |
| [[lecture-17042026111903|Lecture 17042026111903]] | 17-04-2026 11:19:03 |
| [[lecture-13042026091404|Lecture 13042026091404]] | 13-04-2026 09:14:04 |
| [[lecture-30032026091529|Lecture 30032026091529]] | 30-03-2026 09:15:29 |
| [[lecture-13032026111916|Lecture 13032026111916]] | 13-03-2026 11:19:16 |
| [[lecture-23022026091407|Lecture 23022026091407]] | 23-02-2026 09:14:07 |
| [[lecture-09032026092159|Lecture 09032026092159]] | 09-03-2026 09:21:59 |
| [[lecture-20022026112118|Lecture 20022026112118]] | 20-02-2026 11:21:18 |
| [[lecture-27022026111035|Lecture 27022026111035]] | 27-02-2026 11:10:35 |
| [[lecture-06032026111911|Lecture 06032026111911]] | 06-03-2026 11:19:11 |
| [[lecture-02032026091732|Lecture 02032026091732]] | 02-03-2026 09:17:32 |
| [[lecture-16022026091158|Lecture 16022026091158]] | 16-02-2026 09:11:58 |

<!-- SerializedQuery END -->

### Da processare
<!-- QueryToSerialize: TABLE WITHOUT ID file.link as Lezione, filter(file.tags, (t) => t="#status/pending" OR t="#status/ongoing") AS Status FROM #category/lecture AND #topic/cybersecurity AND (#status/pending OR #status/ongoing) SORT date DESC -->
<!-- SerializedQuery: TABLE WITHOUT ID file.link as Lezione, filter(file.tags, (t) => t="#status/pending" OR t="#status/ongoing") AS Status FROM #category/lecture AND #topic/cybersecurity AND (#status/pending OR #status/ongoing) SORT date DESC -->

| Lezione | Status |
| ------- | ------ |

<!-- SerializedQuery END -->

## Note
- Argomenti
	- [[cybersecurity|Cybersecurity]]
	- [[crittografia|Crittografia]]
		- [[crittografia-simmetrica|Crittografia simmetrica]]
			- [[cifrario-di-cesare|Cifrario di Cesare]], [[cifrario-a-sostituzione-monoalfabetica|Cifrario a sostituzione monoalfabetica]], [[cifrario-affine|Cifrario affine]], [[cifrario-di-vigenere|Cifrario di Vigenere]], [[cifrario-di-hill|Cifrario di Hill]], [[cifrario-a-rotazione|Cifrario a rotazione]]
			- [[otp|OTP]], [[cifrario-sicuro|Cifrario sicuro]]
			- [[number-generators|Number generators]], [[prng|PRNG]], [[bbs|BBS]]
			- [[cifrario-di-flusso|Cifrario di flusso]], [[rc4|RC4]], [[estream|eStream]]
				- [[two-time-pad-attack|Two-time pad attack]]
				- [[no-integrity-attack|No integrity attack]]
			- [[cifrario-di-blocco|Cifrario di blocco]], [[des|DES]] ([[2des|2DES]], [[3des|3DES]], [[desx|DESX]]), [[aes|AES]]
				- [[rete-di-feistel|Rete di Feistel]]
				- [[cifrario-di-blocco-modi-di-operazione|Cifrario di blocco#Modi di operazione]]
				- [[cifrario-semanticamente-sicuro|Cifrario semanticamente sicuro]], [[nonce|Nonce]]
		- [[scambio-di-chiavi|Scambio di chiavi]], [[certificato-digitale|Certificato digitale]]
			- [[puzzle-di-merkle|Puzzle di Merkle]], [[diffie-hellman|Diffie-Hellman]]
		- [[crittografia-asimmetrica|Crittografia asimmetrica]]
			- [[tdf|TDF]]
			- [[rsa|RSA]], [[firma-digitale|Firma digitale]]
			- [[elgamal|ElGamal]], [[rabin|Rabin]]
	- [[sicurezza-di-rete|Sicurezza di rete]], [[aaa|AAA]], [[cia|CIA]], [[anonimato|Anonimato]], [[dataleak|Dataleak]]
		- [[tor|Tor]]
	- [[sicurezza-dei-sistemi|Sicurezza dei sistemi]], [[access-control|Access control]]
		- [[dac|DAC]], [[mac|MAC]] ([[blp|BLP]], [[biba|BIBA]]), [[rbac|RBAC]]
	- [[sicurezza-wireless|Sicurezza wireless]], [[wi-fi|Wi-Fi]]
		- [[jamming|Jamming]], [[eavesdropping|Eavesdropping]], [[rfid|RFID]]
		- [[wep|WEP]], [[wpa|WPA]]
	- [[buffer-overflow|Buffer overflow]]
- Laboratori
	- 1
	- 2
		- [[hacker|Hacker]]
		- [[vapt|VAPT]]
		- [[password|Password]], [[hash|Hash]]
			- [[attacco-pre-calcolato|Attacco pre-calcolato]], [[hash-chain|Hash chain]], [[rainbow-table|Rainbow table]], [[salting|Salting]]
			- [[attacco-bruteforce|Attacco bruteforce]]
			- [[attacco-a-dizionario|Attacco a dizionario]]
	- 3
- Organizzazione studio
	- settimana 1
		- definizioni cybersecurity
		- crittografia (teoria + es.)
	- settimana 2
		- sicurezza (teoria + es.)
	- settimana 3
		- laboratorio 2
		- ripasso
		- simulazioni
	- settimana 4
		- ripasso
		- simulazioni


<!-- QueryToSerialize: TABLE WITHOUT ID file.link AS Note, filter(file.tags, (t) => t="#status/pending" OR t="#status/ongoing" OR t="#status/finished") AS Status FROM #category/note AND #topic/cybersecurity SORT file.ctime DESC -->
<!-- SerializedQuery: TABLE WITHOUT ID file.link AS Note, filter(file.tags, (t) => t="#status/pending" OR t="#status/ongoing" OR t="#status/finished") AS Status FROM #category/note AND #topic/cybersecurity SORT file.ctime DESC -->

| Note                                                                                           | Status                             |
| ---------------------------------------------------------------------------------------------- | ---------------------------------- |
| [[buffer-overflow|Buffer overflow]]                                               | <ul><li>#status/finished</li></ul> |
| [[salting|Salting]]                                                               | <ul><li>#status/finished</li></ul> |
| [[ddos|DDoS]]                                                                     | <ul><li>#status/finished</li></ul> |
| [[dos|DoS]]                                                                       | <ul><li>#status/finished</li></ul> |
| [[2des|2DES]]                                                                     | <ul><li>#status/finished</li></ul> |
| [[access-control|Access control]]                                                 | <ul><li>#status/finished</li></ul> |
| [[blp|BLP]]                                                                       | <ul><li>#status/finished</li></ul> |
| [[cifrario-a-sostituzione-monoalfabetica|Cifrario a sostituzione monoalfabetica]] | <ul><li>#status/finished</li></ul> |
| [[cifrario-di-flusso|Cifrario di flusso]]                                         | <ul><li>#status/finished</li></ul> |
| [[des|DES]]                                                                       | <ul><li>#status/finished</li></ul> |
| [[desx|DESX]]                                                                     | <ul><li>#status/finished</li></ul> |
| [[ecb|ECB]]                                                                       | <ul><li>#status/finished</li></ul> |
| [[otp|OTP]]                                                                       | <ul><li>#status/finished</li></ul> |
| [[puzzle-di-merkle|Puzzle di Merkle]]                                             | <ul><li>#status/finished</li></ul> |
| [[rbac|RBAC]]                                                                     | <ul><li>#status/finished</li></ul> |
| [[scambio-di-chiavi|Scambio di chiavi]]                                           | <ul><li>#status/finished</li></ul> |
| [[two-time-pad-attack|Two-time pad attack]]                                       | <ul><li>#status/finished</li></ul> |
| [[estream|eStream]]                                                               | <ul><li>#status/finished</li></ul> |
| [[cifrario-semanticamente-sicuro|Cifrario semanticamente sicuro]]                 | <ul><li>#status/finished</li></ul> |
| [[attacco-informatico|Attacco informatico]]                                       | <ul><li>#status/finished</li></ul> |
| [[cifrario-di-vigenere|Cifrario di Vigenere]]                                     | <ul><li>#status/finished</li></ul> |
| [[crittanalisi-differenziale|Crittanalisi differenziale]]                         | <ul><li>#status/finished</li></ul> |
| [[crittografia|Crittografia]]                                                     | <ul><li>#status/finished</li></ul> |
| [[rsa|RSA]]                                                                       | <ul><li>#status/finished</li></ul> |
| [[crittografia-asimmetrica|Crittografia asimmetrica]]                             | <ul><li>#status/finished</li></ul> |
| [[tdf|TDF]]                                                                       | <ul><li>#status/finished</li></ul> |
| [[attacco-a-dizionario|Attacco a dizionario]]                                     | <ul><li>#status/finished</li></ul> |
| [[attacco-bruteforce|Attacco bruteforce]]                                         | <ul><li>#status/finished</li></ul> |
| [[hash-chain|Hash chain]]                                                         | <ul><li>#status/finished</li></ul> |
| [[rainbow-table|Rainbow table]]                                                   | <ul><li>#status/finished</li></ul> |
| [[attacco-pre-calcolato|Attacco pre-calcolato]]                                   | <ul><li>#status/finished</li></ul> |
| [[ccmp|CCMP]]                                                                     | <ul><li>#status/finished</li></ul> |
| [[tkip|TKIP]]                                                                     | <ul><li>#status/finished</li></ul> |
| [[wpa|WPA]]                                                                       | <ul><li>#status/finished</li></ul> |
| [[wps|WPS]]                                                                       | <ul><li>#status/finished</li></ul> |
| [[hash|Hash]]                                                                     | <ul><li>#status/finished</li></ul> |
| [[password|Password]]                                                             | <ul><li>#status/finished</li></ul> |
| [[vapt|VAPT]]                                                                     | <ul><li>#status/finished</li></ul> |
| [[hacker|Hacker]]                                                                 | <ul><li>#status/finished</li></ul> |
| [[mac|MAC]]                                                                       | <ul><li>#status/finished</li></ul> |
| [[eavesdropping|Eavesdropping]]                                                   | <ul><li>#status/finished</li></ul> |
| [[rc4|RC4]]                                                                       | <ul><li>#status/finished</li></ul> |
| [[rfid|RFID]]                                                                     | <ul><li>#status/finished</li></ul> |
| [[sicurezza-wireless|Sicurezza wireless]]                                         | <ul><li>#status/finished</li></ul> |
| [[wep|WEP]]                                                                       | <ul><li>#status/finished</li></ul> |
| [[wi-fi|Wi-Fi]]                                                                   | <ul><li>#status/finished</li></ul> |
| [[biba|BIBA]]                                                                     | <ul><li>#status/finished</li></ul> |
| [[capabilities|Capabilities]]                                                     | <ul><li>#status/finished</li></ul> |
| [[acl|ACL]]                                                                       | <ul><li>#status/finished</li></ul> |
| [[jamming|Jamming]]                                                               | <ul><li>#status/finished</li></ul> |
| [[sicurezza-dei-sistemi|Sicurezza dei sistemi]]                                   | <ul><li>#status/finished</li></ul> |
| [[aaa|AAA]]                                                                       | <ul><li>#status/finished</li></ul> |
| [[anonimato|Anonimato]]                                                           | <ul><li>#status/finished</li></ul> |
| [[anonymous-remailer|Anonymous remailer]]                                         | <ul><li>#status/finished</li></ul> |
| [[cia|CIA]]                                                                       | <ul><li>#status/finished</li></ul> |
| [[dac|DAC]]                                                                       | <ul><li>#status/finished</li></ul> |
| [[dataleak|Dataleak]]                                                             | <ul><li>#status/finished</li></ul> |
| [[mix|MIX]]                                                                       | <ul><li>#status/finished</li></ul> |
| [[tor|Tor]]                                                                       | <ul><li>#status/finished</li></ul> |
| [[sicurezza-di-rete|Sicurezza di rete]]                                           | <ul><li>#status/finished</li></ul> |
| [[rabin|Rabin]]                                                                   | <ul><li>#status/finished</li></ul> |
| [[elgamal|ElGamal]]                                                               | <ul><li>#status/finished</li></ul> |
| [[funzione-totiente-di-eulero|Funzione totiente di Eulero]]                       | <ul><li>#status/finished</li></ul> |
| [[teorema-di-fermat-sui-numeri-primi|Teorema di Fermat sui numeri primi]]         | <ul><li>#status/finished</li></ul> |
| [[inverso-modulare|Inverso modulare]]                                             | <ul><li>#status/finished</li></ul> |
| [[algoritmo-di-euclide|Algoritmo di Euclide]]                                     | <ul><li>#status/finished</li></ul> |
| [[algoritmo-square-and-multiply|Algoritmo square-and-multiply]]                   | <ul><li>#status/finished</li></ul> |
| [[congruenza|Congruenza]]                                                         | <ul><li>#status/finished</li></ul> |
| [[modulo|Modulo]]                                                                 | <ul><li>#status/finished</li></ul> |
| [[diffie-hellman|Diffie-Hellman]]                                                 | <ul><li>#status/finished</li></ul> |
| [[crittografia-simmetrica|Crittografia simmetrica]]                               | <ul><li>#status/finished</li></ul> |
| [[cifrario-di-blocco|Cifrario di blocco]]                                         | <ul><li>#status/finished</li></ul> |
| [[certificato-digitale|Certificato digitale]]                                     | <ul><li>#status/finished</li></ul> |
| [[aes|AES]]                                                                       | <ul><li>#status/finished</li></ul> |
| [[cifrario-affine|Cifrario affine]]                                               | <ul><li>#status/finished</li></ul> |
| [[cbc|CBC]]                                                                       | <ul><li>#status/finished</li></ul> |
| [[no-integrity-attack|No integrity attack]]                                       | <ul><li>#status/finished</li></ul> |
| [[ofb|OFB]]                                                                       | <ul><li>#status/finished</li></ul> |
| [[cifrario-sicuro|Cifrario sicuro]]                                               | <ul><li>#status/finished</li></ul> |
| [[rete-di-feistel|Rete di Feistel]]                                               | <ul><li>#status/finished</li></ul> |
| [[cfb|CFB]]                                                                       | <ul><li>#status/finished</li></ul> |
| [[prng|PRNG]]                                                                     | <ul><li>#status/finished</li></ul> |
| [[bbs|BBS]]                                                                       | <ul><li>#status/finished</li></ul> |
| [[firma-digitale|Firma digitale]]                                                 | <ul><li>#status/finished</li></ul> |
| [[ctr|CTR]]                                                                       | <ul><li>#status/finished</li></ul> |
| [[3des|3DES]]                                                                     | <ul><li>#status/finished</li></ul> |
| [[crittanalisi-lineare|Crittanalisi lineare]]                                     | <ul><li>#status/finished</li></ul> |
| [[cifrario-di-cesare|Cifrario di Cesare]]                                         | <ul><li>#status/finished</li></ul> |
| [[nonce|Nonce]]                                                                   | <ul><li>#status/finished</li></ul> |
| [[cifrario-di-hill|Cifrario di Hill]]                                             | <ul><li>#status/finished</li></ul> |
| [[cybersecurity|Cybersecurity]]                                                   | <ul><li>#status/finished</li></ul> |
| [[xts-aes|XTS-AES]]                                                               | <ul><li>#status/finished</li></ul> |
| [[effetto-valanga|Effetto valanga]]                                               | <ul><li>#status/finished</li></ul> |
| [[principio-di-kerckhoffs|Principio di Kerckhoffs]]                               | <ul><li>#status/finished</li></ul> |
| [[zero-day|Zero-day]]                                                             | <ul><li>#status/finished</li></ul> |
| [[cifrario-simmetrico|Cifrario simmetrico]]                                       | <ul><li>#status/finished</li></ul> |
| [[number-generators|Number generators]]                                           | <ul><li>#status/finished</li></ul> |
| [[trng|TRNG]]                                                                     | <ul><li>#status/finished</li></ul> |
| [[prf|PRF]]                                                                       | <ul><li>#status/finished</li></ul> |

<!-- SerializedQuery END -->


## Referenze
- [virtuale]()
- [dynamik]()
- eserciziari