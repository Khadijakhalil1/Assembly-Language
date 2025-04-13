include irvine32.inc

.data
var1 dword ?
var2 dword ?
var3 dword ?
msg1 byte "Enter the 1st value=",0
msg2 byte "Enter the 2nd value=",0
msg3 byte "Addition=",0
msg4 byte "Subtraction=",0
msg5 byte "Multiplication=",0


.code
main proc
mov edx,offset msg1
call writestring
call readint
mov ebx,eax
call crlf          ;\n
mov edx,offset msg2
call writestring
call readint
mov var1,ebx
mov var2,eax
 
call sum
call crlf
call subt
call crlf
call mult
exit
main endp



sum proc 
mov eax,var1
mov ebx,var2
add eax,ebx
mov edx,offset msg3
call writestring
call writeint
ret
sum endp
 
subt proc 
mov eax,var1
mov ebx,var2
sub eax,ebx
call dumpregs
ret
subt endp

mult proc 
mov eax,var1
mov ebx,var2
imul eax,ebx
call dumpregs
ret
mult endp
comment &
divide proc 
mov eax,var3
mov ebx,var2
mov edx,0
div ebx
call dumpregs
ret
divide endp
&
end main
