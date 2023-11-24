
# Asembler

Celem do którego dążyliśmy w zadaniu na była analiza pracy mikrokontrolera.A dokładnie działanie programu kopiującego
dane z jednego obszaru pamięci RAM do innego.

## Description

![Obraz19](https://github.com/maciekstrach01/Asembler_addition_subtraction/assets/146733279/90dfcf73-1025-4f5e-8109-fbcffc37460d)

Na potrzeby symulacji zmieniliśmy ręcznie zawartość komórek w celu weryfikacji i sprawdzenia poprawności działania naszego programu.

![Obraz20](https://github.com/maciekstrach01/Asembler_addition_subtraction/assets/146733279/b4330973-7954-472b-913e-311fbb95d660)

1) Rejestr R0 uzyskuje wartość 20h

![Obraz21](https://github.com/maciekstrach01/Asembler_addition_subtraction/assets/146733279/51d94f5b-f5d9-4edc-82f1-6bb21e883aa4)

2) Rejestr R1 uzyskuje wartość 30h

![Obraz22](https://github.com/maciekstrach01/Asembler_addition_subtraction/assets/146733279/b8e59d89-48b0-429c-826d-d644f9fb7f30)

3) Rejestr R3 uzyskuje wartość 16 w zapisie dziesiętnym. Wynosi to 0x10 w zapisie heksadecymalnym

![Obraz23](https://github.com/maciekstrach01/Asembler_addition_subtraction/assets/146733279/a9dafd22-2b47-4204-9d17-c52fa54c1e51)

4) Akumulator ma przypisaną wartość z adresu komórki rejestru R0,czyli jest to dokładnie wartość komórki 20h,wynosząca dokładnie 0x01

![Obraz24](https://github.com/maciekstrach01/Asembler_addition_subtraction/assets/146733279/41699a03-958c-4e2f-b6c7-fd2b92127611)
![Obraz25](https://github.com/maciekstrach01/Asembler_addition_subtraction/assets/146733279/844ef824-5a92-4002-98b7-bfe6db28fd77)

5) Komórka o adresie z rejestru R1(30h) ma przypisaną wartość z akumulatora
Tym samym kopiujemy wartość z jednej komórki pamięci do drugiej komórki pamięci


![Obraz26](https://github.com/maciekstrach01/Asembler_addition_subtraction/assets/146733279/1e952892-3345-442e-9681-c6d417f293ec)

6) Następuje inkrementacja rejestru R0 o 1, i obecna wartość rejestru R0 to 21h
![Obraz27](https://github.com/maciekstrach01/Asembler_addition_subtraction/assets/146733279/fd16ca5b-14c8-4bb7-bf53-27543d371c85)

7) Następuje inkrementacja rejestru R1 o 1, i obecna wartość rejestru R1 to 31h

![Obraz28](https://github.com/maciekstrach01/Asembler_addition_subtraction/assets/146733279/670fd69f-8e5f-44a7-8e27-c6e42143335e)

8) Gdy wartość rejestru R3 nie jest równa 0,dekrementujemy ją o 1 i wykonujemy skok do linijki 14 naszego kodu, czyli do etykiety ‘Pętla’. Rejestr R3 po dekrementacji ma wartość 0x0f, dlatego wykonuje się skok do etykiety ‘Pętla’.

![Obraz29](https://github.com/maciekstrach01/Asembler_addition_subtraction/assets/146733279/4407c6f9-9cb2-4c72-bbf9-3dc4cffbc812)

Wartość rejestru R3 przed wykonaniem dekrementacji to 0x10

![Obraz30](https://github.com/maciekstrach01/Asembler_addition_subtraction/assets/146733279/974781f9-6797-4f89-a6ec-734af0e87f79)

Wartość rejestru R3 po wykonaniu dekrementacji to 0x0f
9) Wykonujemy już te same czynności w pętli co za jej 1 obiegiem, lecz ze zmienionymi danymi.
W 9 kroku wykonuje się to samo co w kroku numer 4, lecz ze zmienionymi danymi, co można opisać w poniższy sposób.



Akumulator ma przypisaną wartość z adresu komórki rejestru R0,czyli jest to dokładnie wartość komórki 21h,wynosząca dokładnie 0x02.

![Obraz31](https://github.com/maciekstrach01/Asembler_addition_subtraction/assets/146733279/4282428e-4166-48b7-b8c8-dc6b433b5f9a)

10) Do komórki na którą wskazuje rejestr R1, czyli 31h zostaje przypisana wartość z akumulatora, czyli 0x02.

![Obraz32](https://github.com/maciekstrach01/Asembler_addition_subtraction/assets/146733279/4a456cd4-3a42-48bf-a934-22021188a648)

11) Następuje kolejna inkrementacja o wartość 1 kolejno rejestrów: R0 i R1, co daje w konsekwencji R0 wartość 22h, a R1 wartość 32h.

![Obraz33](https://github.com/maciekstrach01/Asembler_addition_subtraction/assets/146733279/16d04e95-020b-4429-a862-bb1188ea81f2)

12) Wartość w rejestrze R3 zostaje po raz kolejny dekrementowana o 1 następuje przeskoczenie do etykiety ‘Pętla’, pod warunkiem, gdy R3 nie jest równe 0, a jest równe po dekrementacji 0x0e, a więc skok następuje.

![Obraz34](https://github.com/maciekstrach01/Asembler_addition_subtraction/assets/146733279/1dca42d5-7079-4948-8cef-3460c3a5ee6d)

13) Następnie w pętli wykonują się analogicznie czynności opisane wyżej dopóki wartość w rejestrze R3 po jego dekrementacji będzie równa 0. W takim momencie cały program kończy swoje działanie.
W wyniku uruchomienia programu wartości komórek od 20h do 22h zostały przekopiowane do komórek od 30h do 32h. Końcowa wartość rejestru R0 to 0x30, a rejestru R1 to 0x40.
Ostateczny stan komórek po zakończeniu działania programu wygląda tak jak poniżej.
Kolorem żółtym zostały zaznaczone komórki z których kopiowaliśmy, a kolorem niebieskim komórki, do których przekopiowaliśmy wartości.


![Obraz35](https://github.com/maciekstrach01/Asembler_addition_subtraction/assets/146733279/2f95f3ac-1277-4f75-aeb2-8f49f84cb3a2)

Ostateczne podsumowanie zadania: Pomyślnie przeprowadzono proces debugowania. W  wyniku działania programu udało się w prawidłowy sposób skopiować wartości z 2 różnych miejsc w pamięci.



Następnie naszym zadaniem było wykonanie programu, kopiującego dane z programu do wewnętrznej pamięci RAM.
Poniżej wersja kodu zaproponowana przez nas.
![Obraz36](https://github.com/maciekstrach01/Asembler_addition_subtraction/assets/146733279/828f45b1-dd8e-4ebb-89cc-3163b23c5574)


Nasza tablica przyjmuje kolejno wartości: 11,54,255,13,113 w systemie dziesiątkowym co odpowiada w systemie heksadecymalnym wartościom: 0B, 36, FF, 0D, 71. Tablica jest pięcioelementowa, zatem do rejestru R0 przypisujemy wartość 5. Wartości będą przekopiowane do komórek pamięci od adresu 20h.
Początkowo pamięć komórek wygląda tak jak poniżej.


![Obraz37](https://github.com/maciekstrach01/Asembler_addition_subtraction/assets/146733279/cbd2f7e4-95e5-4349-a79b-0cc62fa718dc)

Proces debugowania:
1) R0 przypisujemy wartość 05h


![Obraz38](https://github.com/maciekstrach01/Asembler_addition_subtraction/assets/146733279/29885f02-c2cd-4ea4-9f37-9500a80d8d87)

2) R1 przypisujemy wartość 20h

![Obraz39](https://github.com/maciekstrach01/Asembler_addition_subtraction/assets/146733279/2e4717da-d148-49af-bd91-4606b007990f)

3) Wskaźnikowi DPTR przypisujemy adres pierwszego elementu etykiety

![Obraz40](https://github.com/maciekstrach01/Asembler_addition_subtraction/assets/146733279/bc141347-0476-4ed4-9c2e-586b0ea27b4b)

4) W pętli akumulatorowi przypisujemy wartość z komórki pamięci, na którą wskazuje DPTR, czyli 0Bh

![Obraz41](https://github.com/maciekstrach01/Asembler_addition_subtraction/assets/146733279/1b2bc411-129d-46db-bdf7-dc9dc3a61b23)

5) W komórce pamięci na którą wskazuje rejestr R1, czyli 20h umieszczamy wartość z akumulatora, czyli 0Bh

![Obraz42](https://github.com/maciekstrach01/Asembler_addition_subtraction/assets/146733279/7ab32188-1dfc-44fd-849f-b908f95d7e3c)

6) Zerowanie wartości akumulatora

![Obraz43](https://github.com/maciekstrach01/Asembler_addition_subtraction/assets/146733279/74251d47-76f7-4975-bb28-bf7260b4f908)

7) Inkrementacja DPTR, czyli przesunięcie na następny element tablicy

![Obraz44](https://github.com/maciekstrach01/Asembler_addition_subtraction/assets/146733279/67fff315-383c-413d-8b59-163d5fd51001)


8) Wartość w rejestrze R0 zostaje dekrementowana o 1 i następuje przeskoczenie do etykiety ‘Pętla’, pod warunkiem, gdy R0 nie jest równe 0
9) Postępujemy analogicznie, dopóki R0 nie będzie równe 0. W trakcie naszego programu wartości z tablicy zostały umieszczone w komórkach pamięci od adresu 20h do 24h. Zostało przekopiowane 5 wartości, zatem odbyło się 5 obiegów naszej pętli.


Ostateczne podsumowanie zadania: Proces debugowania przeszedł pomyślnie. Skopiowano wartości z tablicy do pamięci wewnętrznej RAM. W celu rozwiązania kłopotu związanego z brakiem możliwości zmieszczenia adresu pamięci programu w rejestrze użyto wskaźnika DPTR.















## 🛠 Skills
Asembler


## Running Tests

    Uruchom środowisko μVision.

    Z menu "Project" utwórz nowy projekt.

    Wybierz procesor (np. Atmel AT89C51RD2 dla zestawu ZL2MCS51).

    Ustaw częstotliwość rezonatora kwarcowego na 11,0592MHz.

    Zaznacz opcję "Create HEX file" na karcie "Output" w oknie "Options for Target".

    Dodaj plik z kodem źródłowym do projektu.

    Skompiluj projekt za pomocą polecenia "Build" (skrót klawiaturowy F7).

    Z menu "Debug" uruchom sesję debugowania za pomocą opcji "Start/Stop debug session".

    Monitoruj stan mikrokontrolera, rejestrów, pamięci programu, i IRAM za pomocą okien "Registers Window" i "Memory Windows".

    W trybie debugowania, naciśnij F11 lub użyj opcji "Step" do przejścia do następnej instrukcji.

    W oknie "Memory" wpisz adres, aby przeglądać i modyfikować zawartość pamięci programu.


