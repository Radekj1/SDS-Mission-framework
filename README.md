Poradnik jak stworzyć misję za pomocą szablonu SDS

1. Pobierz oraz rozpakuj plik Szablon-misji-master ze strony https://github.com/Przemro/Szablon-misji
2. Nazwij rozpakowany plik np. "SDS_szablon.Altis"
3. Wrzuć ten plik do folderu "C:\Users\nazwa\Documents\Arma 3" - "Other Profiles\nazwa profilu\missions"
4. Włącz edytor i wybierz mapę na której chcesz stworzyć misję


5. Postaw jednostkę i zapisz misję np. "CO-XX_nazwa_misji" 
6. Następnie zminimalizuj grę i wejdź w folder do którego wcześniej wrzuciłeś plik misji (pkt.3)
7. Skopiuj zawartość pliku z szablonem do pliku swojej misji (kopiujemy każdy plik poza "mission.sqm"!!!)
8. Wejdź z powrotem na edytor i kliknij "Zapisz"
9. Wybierz mapę Altis i otwórz misję "SDS_szablon"
10. Skopiuj potrzebne ci jednostki po czym wróć na swoją misję i tam je wklej
11. Dodaj wszystkich graczy jako grywalnych oraz jednego jako gracza (usuń postawionego wcześniej gracza)
12. Obok graczy stwórz respawn tj.
   -stwórz znacznik (nie zmieniaj jego wartości ani wyglądu)
   -nazwij go "respawn_west" (jeżeli gracz to blufor)
   -nazwij go "respawn_east" (jeżeli gracz to opfor)   

13. Dodaj moduł zeusa (Moduły -> Zeus -> Mistrz gry), w polu właściciel wpisz #adminlogged
14. Zapisz swój postep po czym przejdź do dodania jednostek wroga


15. Aby dodać jednostki wroga:

 - stwórz nowy wyzwalacz oraz dobierz jego kształt
 - w polu "nazwa" wpisz "z1"
 - w polu "warunek" wpisz "time > 1" 
 
                                   a          b          c           d        e         f
 - w aktywacja wpisz "fun=["z1",[2,0,0],[4,2,40,10],[3,1,45,15],[2,1,15,5],[1,2,20],[2,9,0,0]] spawn DAC_Zone;"
 (nazwa oraz pierwsza wartość w aktywacji muszą być takie same w tym przypadku jest to z1... druga strefa z2, trzecia z3 itd.)
 
 Opis aktywacji znajdziesz w pobranym folderze...
 A to jego skrócona wersja:
 
 a - pierwsza wartość odpowiada łączeniu stref, jeżeli 2 strefy mają np. 2, to boty będą chodzić z jednej strefy do drugiej
     Druga i trzecia wartość jest aktualnie zbędna ;)
   
 b - są to jednostki piechoty, w tym przypadku 4 oddziały o wielkości 2. wygeneruje się 40 waypointów, z tego po 10 na grupę
 
 c - są jednostki zmotoryzowane, w tym przypadku 3 oddziały o wielkości 1. wygeneruje się 45 waypointów, z tego po 15 na grupę
 
 d - są to czołgi, w tym przypadku 2 oddziały o wielkości 1. wygeneruje się 15 waypointów, z tego po 5 na grupę
   
 e - są to śmigłowce, w tym przypadku 1 o liczebności oddziału 2. wygeneruje się 20 waypointów
 
 Jeżeli nie chcesz danej klasy jednostek usuń jej wartości np. "fun=["z1",[2,0,0],[4,2,40,10],[],[],[],[2,9,0,0]] spawn DAC_Zone;"
 
 f - pierwsza wartość to strony po której są boty: 0 = east    1 = West   2 = RACS   3 = Civilian
 
     Druga to są jednostki wroga, przeciwko którym walczymy - w tym przypadku - Talibowie
	 
  // REDFOR case 0
  // BLUFOR case 1
  // Independent case 2
  // Civilians case 3
  // Russians MSV case 4
  // USMC case 5
  // CDF case 6
  // ChDKZ case 7
  // TK case 8
  // Taliby case 9
  // Russians VDV case 10
  // SLA case 11
  
 
16. Po dodaniu stref za pomocą znaczników oznacz cele oraz sojuszniczą bazę.

Koniec pracy w edytorze ;) ...

Następnie możesz otworzyć folder ze zrobioną misją i zmienić:

1. Autorów oraz nazwe misji
w tym celu otwórz plik "description.ext" 

Zmień tam (jak na przykładzie niżej):

onLoadName = "nazwa misji";
onLoadMission = "sds-polska.pl";  bez zmian
author = "autorzy misji";
loadScreen = "logo.paa";  bez zmian

Reszta nie podlega zmianom

2. Jednostki jakimi gra gracz

W tym celu wchodzimy do folderu "f\assignGear", gdzie znajduje się folder z dodatkowymi frakcjami 
Jest tam kilka folderów z różnymi frakcjami, jeżeli chcesz zmienić frakcję po prostu skopiuj ją i nadpisz bezpośrednio do "f\assignGear"

3. Briefing - w tym celu wejdź do "f\briefing"

Tam w zależności od frakcji jaką zagrasz wybierz

 - "f_briefing_nato"
 - "f_briefing_csat"
 - "f_briefing_aaf"
 
 Tam wpisz swój briefing według opisu w plikach
