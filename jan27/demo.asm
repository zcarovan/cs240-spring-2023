;;; Professor Bailey
;;; Spring 2023

include cs240.inc
	
DOSEXIT = 4C00h
DOS = 21h

.8086

.data
	
values	WORD	1234h, 0ABCDh, 1098h
bytes	BYTE	10, 34
motto	BYTE	"Hamilton rocks the DOSBox", 0

.code

;;; Entry point for the program

main PROC
	mov	ax, @data	; Setup the data segment
	mov	ds, ax

	;; Start of DOS program...

	mov	dx, values + 2
	call	DumpRegs

	mov	ax, DOSEXIT	; Signal DOS that we are done
	int	DOS
main ENDP
END main
