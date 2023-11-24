MY_KILLING_COPY SEGMENT CODE	; Ulokowanie kodu w najbardziej wygodnym (wg asemblera)
								; miejscu w pamieci kodu
Zrodlo DATA 20h
Cel DATA 30h
IleDanych EQU 16
	
CSEG AT 0
JMP start

RSEG MY_KILLING_COPY
	start:
		MOV R0,#Zrodlo		; Przeniesienie adresu Zrodlo do Rejestru R0
		MOV R1,#Cel			; Przeniesienie adresu Cel do Rejestru R1
		MOV R3,#IleDanych	; Przeniesienie stalej IleDanych do Rejestru R3
	Petla:
		MOV A,@R0		; Przeniesienie zawartosci Rejestru R0 do Akumulatora
		MOV @R1,A		; Przeniesienie zawartosci Akumulatora
						; do komorki o adresie w Rejestrze R1
		INC R0			; Inkrementacja adresu w Rejestrze R0
						; Nastepna komorka pamieci RAM
		INC R1			; Inkrementacja adresu w Rejestrze R1
						; Nastepna komorka pamieci RAM
		DJNZ R3,Petla	; Dekrementacja zawartosci Rejestru R3
						; Nastepna iteracja petli, jesli wartosc R3 rozna od 0
END
