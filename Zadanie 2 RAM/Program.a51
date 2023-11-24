MY_KILLING_COPY SEGMENT CODE	; Ulokowanie kodu w najbardziej wygodnym (wg asemblera)
								; miejscu w pamieci kodu.
Cel DATA 30h
IleDanych EQU 5
	
CSEG AT 0
JMP start

RSEG MY_KILLING_COPY
	start:
		MOV R0,#Cel			; Przeniesienie adresu Cel do Rejestru R0.
		MOV R2,#IleDanych	; Przeniesienie stalej IleDanych do Rejestru R2.
		MOV DPTR,#etykieta	; Zaladowanie adresu pierwszego elementu tablicy danych.
							; Etykieta do wskaznika.
	Petla:
		CLR A			; Wyczyszczenie Akumulatora.
						; Niezbedne do poprawnej pracy programu.
		MOVC A,@A+DPTR	; Przeniesienie zawartosci ze wskazanej komorki pamieci
						; programu do akumulatora.
		MOV @R0,A		; Przeniesienie zawartosci Akumulatora
						; do komorki RAM o adresie w Rejestrze R0.
		INC DPTR		; Inkrementacja wskaznika.
						; Nastepna komorka pamieci programu.
		INC R0			; Inkrementacja adresu w Rejestrze R0.
						; Nastepna komorka pamieci RAM.
		DJNZ R2,Petla	; Dekrementacja zawartosci Rejestru R2
						; Nastepna iteracja petli, jesli wartosc R2 rozna od 0.
						
	etykieta: db 11,21,4,18,8	; Tablica danych oznaczona etykieta.
END
