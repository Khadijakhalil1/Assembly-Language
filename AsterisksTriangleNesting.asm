include irvine32.inc
.data
k byte"*",0
.code 
main proc
mov eax,1
.while eax<=5
mov ebx,1
call writestring
call crlf
.while ebx<=eax
inc eax
exit 
main endp
end main 