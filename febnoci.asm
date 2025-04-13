include irvine32.inc

.data


.code

main proc

mov eax,0   ;a=0
call writeint
mov eax,1   ;b=1
call writeint
mov eax,0         ;a=eax=0
mov ebx,1          ;b=ebx=1
mov ecx,5          ;set loop for 5 addiotion
l1:
add eax,ebx       ;eax=eax+ebx       n=a+b       
call writeint
mov edx,eax        ;edx=eax=n
mov eax,ebx            
mov ebx,edx
loop l1
exit
main endp
end main
