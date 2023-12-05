# Projekti Databaze

Baze e te dhenave per aplikacion per studente qe kerkojne pune dhe punedhenes qe kerkojne studente. Studentet mund te regjistrohen duke dhene te dhena personale mbi ta, shkollimin dhe aftesite e tyre profesionale. Pastaj kompanite ose institucionet e ndryshme mund te regjistrohen dhe te publikojne postime mbi vende te punes. Ne keto publikime, kompanite mund te specifikojne kerkesat per vendin e punes qe te kene rekomandime me te pershtatshme te studenteve.

> **Note:** Databaza duhet te permbaje te pakten 10 rreshta me te dhena per tabele.

## Kerkesat e tableave

### Studenti

- ID
- Emri
- Mbiemri
- Gjinia
- Data e lindjes
- Statusi martesor
- Adresa (rruga, qyteti, shteti, kodi postal)
- Telefoni
- Emaili
- Username (unik)
- Passwordi
- Fotoja e profilit
- Aftesite profesionale (zero ose me shume)
- Hobit (zero ose me shume)
- Librat, filmat, muzika qe i pelqen
- Pershkrim rreth vetes

### Edukimi

- ID
- Studenti
- Institucioni
- Drejtimi
- Viti i fillimit
- Viti i mbarimit
- Diploma (file)
- Titulli
- Fusha e studimit
- Te dhenat rreth mentorit

### Projektet

- ID
- Emri
- Data e fillimit
- Data e perfundimit
- Institucioni ku eshte realizuar (fakultet ose kompani)
- Vendi i realizimit
- Pershkrim i projektit
- Roli (pozita) i studentit
- Ueb faqja (nese ka)

### Punesimi

- ID
- Studenti
- Titulli
- Kompania
- Lokacioni
- Data e fillimit
- Data e perfundimit
- Info shtese

### Kompanite

- ID
- Emri
- Llogoja
- Pershkrimi
- Emaili
- Ueb faqja (nese ka)
- Numri i punetoreve
- Lloji i kompanise
- Viti i themelimit
- Adresa (rruga, qyteti, shteti, kodi postal)
- Lokacioni per harte

### Pozitat e punes (postimet)

- ID
- Titulli i pozites
- Pershkrimi i pozites
- Aftesite e nevojshme (te detyruara)
- Aftesite e deshiruara
- Vendi i punes
- Data e postimit te pozites
- Data e fundit per aplikim

### Komentet

- Postimi
- Autori
- Teksti
- Koha
- Numri i pelqimeve (likes)

### Shperndarjet (shares / reposts)

- Postimi
- Studenti
- Komentimi (opsional)
- Koha (timestamp)

### Pelqimet (likes)

- Postimi (opsional)
- Komenti (opsional)
- Perdoruesi
- Koha (timestamp)

> **Note:** Komentet, pëlqimet dhe shpërndarjet e pozitave mund të bëhen nga studentët vetëm përgjatë periudhës sa ato (pozitat) janë aktive.

### Ekstra

Edhe 5 ose me shume detaje rreth aplikacionit

#### Volunteering

- ID
- Studenti
- Pozita
- Kompania/Institucioni
- Data e fillimit
- Data e perfundimit

#### Languages

- ID
- Studenti
- Gjuha

#### Saved posts

- ID
- Studenti
- Postimi

## Queries

### Algjeber, Datalog dhe SQL

1. Listoni të gjithë studentët që janë nga qyteti i Prishtinës të cilët nuk kanë të regjistruar asnjë projekt.
2. Cilët studentë (numrat unik, emrat dhe mbiemrat e tyre) dje dhe sot kanë komentuar dhe kanë shpërndarë (share) ndonjë pozitë?
3. Paraqitni të gjitha pozitat që janë publikuar këtë muaj në qytetin e Prishtinës dhe për të cilat pozita nuk ka asnjë studentë që ka aplikuar.
4. Listoni studentët të cilët dje kanë aplikuar në dy ose më shumë pozita ndërsa sot nuk kanë aplikuar në asnjë pozitë.

### Vetem SQL

5. Listoni top 5 kompanitë/institucionet me numër maksimal të pozitave të shpallura në dy muajt e fundit. Lista të paraqes të dhënat e kompanive/institucioneve (emrin, qytetin dhe email-in) duke përfshirë edhe numrin e pozitave të shpallura.
6. Paraqitni top 3 pozitat në të cilat kanë aplikuar numër maksimal i studentëve (më së shumti) të cilët kanë së paku katër projekte të regjistruara në bazën e të dhënave. Lista të përmbaj këto të dhëna:

   - titulli i pozitës
   - emri i kompanisë që ka shpallur pozitën
   - numri i studentëve që kanë aplikuar
   - numri i pëlqimeve
   - numri i komenteve
   - numri i shpërndarjeve
   - data e publikimit të pozitës

## Fazat e dorezimit

### 1 - 07/12/2023

- Skema relacionale dhe instanca me shembuj per qdo relacion (10 rreshta min)
- Queries 1-4 ne algjeber relacionale
- Queries 1-4 ne datalog

### 2 - 28/12/2023

- Implementimi ne SQL (bashk me kushtezime te integritetit IC)
- 2 views
- 2 triggers
- 2 stored procedures
- 1 funksion

### 3 - 04/01/2024

- ER diagrami per databaze

### 4 - 11/01/2024

- Normalizimi i databazes

## Emerimet

- Tabelat: emra njejes (`student`, `post` jo `students`, `posts`), snake-case: `customer_data`
- Kolonat: emra te qarte dhe pa shkurtesa ose akronime (`position`, `web_page` jo `pos`, `web`), snake-case (`start_date`, `end_date`)
- Mos perdorimi i fjaleve te rezervuara nga MySQL
- Kolona ID ka parashtese emrin e tabeles (`student_id`, `post_id`, `project_id`)
