INCLUDE Irvine32.inc

.code
main PROC

	mov eax,3
	mov ebx,4
	sum eax,ebx
	
	call DumpRegs

	exit
main ENDP
END main