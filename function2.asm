include irvine32.inc

.data 

var1 dword 4
var2 dword 2
var3 dword 5
.code 

main proc
 
call sum
call subt
call mult
call divide
exit
main endp


sum proc 
mov eax,var1
mov ebx,var2
add eax,ebx
call dumpregs
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

divide proc 
mov eax,var3
mov ebx,var2
mov edx,0
div ebx
call dumpregs
ret
divide endp

 


end main
 
