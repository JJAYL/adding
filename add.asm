.model small
.stack 100h
.data
x db ?
y db ?
sum db ?
msg db 10,13, 'Enter number: $'
msg2 db 10,13, 'the sum is: $'
.code
main proc
mov AX, @data
mov ds, AX
mov AH, 9h
lea dx, msg
int 21h
mov AH, 1h
int 21h
sub AL, '0'
mov x, AL
mov AH, 9h
lea dx, msg
int 21h
mov AH, 1h
int 21h
sub AL, '0'
mov y, AL
mov AH, 9H
lea dx, msg2
int 21h
mov AL, x
ADD AL, y
ADD AL, '0'
mov dl, AL
mov AH, 2h
int 21h
mov AH, 04ch
int 21h
main endp
end main
