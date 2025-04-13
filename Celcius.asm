TITLE Add and Subtract              (AddSub.asm)

; This program adds and subtracts 32-bit integers.
; Last update: 2/1/02
; C=F-32*5/9

INCLUDE Irvine32.inc

.data
	faren dword 80
	celcius dword ?
	
.code
main PROC	
	mov ebx,faren
	sub ebx,32
	
	mov ecx,ebx
	mov edx,0
	
	mov ebx,9
	mov eax,5
	div ebx
	
	mov ebx,ecx
	imul eax,ebx
	mov celcius,eax
	  
	call DumpRegs

	exit
main ENDP
END main