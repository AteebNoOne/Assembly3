.model small
.stack 100h
.data 
;-------INTERFACE----------------------------------------------------------- 
string1: db ">>>>>>>>>>>>>>>WELCOME TO MY PHARMACY<<<<<<<<<<<<<<<<<$ "
string2: db 10,13, "Medincine list:$"
string3: db 10,13,"------------Medicine name-------Strength--------Price--$"
string4: db 10,13,"1)Rigix      40mg    Rs 67$"
string5: db 10,13,"2)Risek      20mg    Rs 25$" 
string6: db 10,13,"3)Zertech    50mg    Rs 150$"
string7: db 10,13,"4)Flagyle    10mg    Rs 100$"
string8: db 10,13,"5)Amoxile    40mg    Rs 60$"
string9: db 10,13,"6)Brufeene   25mg    Rs 20$"
string10:db 10,13,"7) Exit$"                   
string11:db 10,13,"Select Your Option:$"
op1: db 10,13,"YOU SELECTED Rigix. How many you want?(1-9):$"
op2: db 10,13,"YOU SELECTED Risek. How many do you want?(1-9):$"
op3: db 10,13,"YOU SELECTED Zertech. How many do you want(1-9)?:$"
op4: db 10,13,"YOU SELECTED Flagyle. How many do you want(1-9)?$"
op5: db 10,13,"YOU SELECTED Amoxile. How many do you want(1-9)?$"
op6: db 10,13,"YOU SELECTED Brufeene. How many do you want(1-9)?$"  
;-------INTERFACE END--------------------------------------------------------   

;-------CALCULATIONS--------
rigixx1: db "67*1 = 67 PKR$"   
rigixx2: db "67*2 = 134 PKR$"   
rigixx3: db "67*3 = 201 PKR$"
rigixx4: db "67*4 = 268 PKR$"
rigixx5: db "67*5 = 335 PKR$"
rigixx6: db "67*6 = 402 PKR$"
rigixx7: db "67*7 = 469 PKR$"
rigixx8: db "67*8 = 536 PKR$"
rigixx9: db "67*9 = 603 PKR$"
risekx1: db "25*1 = 25 PKR$"
risekx2: db "25*2 = 50 PKR$"
risekx3: db "25*3 = 75 PKR$"
risekx4: db "25*4 = 100 PKR$"
risekx5: db "25*5 = 125 PKR$"
risekx6: db "25*6 = 150 PKR$"
risekx7: db "25*7 = 175 PKR$"
risekx8: db "25*8 = 200 PKR$"
risekx9: db "25*9 = 225 PKR$"
zertex1: db "150*1 = 150PKR$"  
zertex2: db "150*2 = 300PKR$"
zertex3: db "150*3 = 450PKR$"
zertex4: db "150*4 = 600PKR$"
zertex5: db "150*5 = 750PKR$"
zertex6: db "150*6 = 900PKR$"
zertex7: db "150*7 = 1050PKR$"
zertex8: db "150*8 = 1200PKR$"
zertex9: db "150*9 = 1350PKR$"
flagyx1: db "100*1 = 100PKR$"   
flagyx2: db "100*2 = 200PKR$"
flagyx3: db "100*3 = 300PKR$"
flagyx4: db "100*4 = 400PKR$"
flagyx5: db "100*5 = 500PKR$"
flagyx6: db "100*6 = 600PKR$"
flagyx7: db "100*7 = 700PKR$"
flagyx8: db "100*8 = 800PKR$"
flagyx9: db "100*9 = 900PKR$"  
amoxyx1: db "40*1 = 40 PKR$"    
amoxyx2: db "40*2 = 80 PKR$" 
amoxyx3: db "40*3 = 120 PKR$" 
amoxyx4: db "40*4 = 160 PKR$" 
amoxyx5: db "40*5 = 200 PKR$" 
amoxyx6: db "40*6 = 240 PKR$" 
amoxyx7: db "40*7 = 280 PKR$" 
amoxyx8: db "40*8 = 320 PKR$" 
amoxyx9: db "40*9 = 360 PKR$" 
brufex1: db "25*1 = 25 PKR$"  
brufex2: db "25*2 = 50 PKR$"
brufex3: db "25*3 = 75 PKR$"
brufex4: db "25*4 = 100 PKR$"
brufex5: db "25*5 = 125 PKR$"
brufex6: db "25*6 = 150 PKR$"
brufex7: db "25*7 = 175 PKR$"
brufex8: db "25*8 = 200 PKR$"
brufex9: db "25*9 = 225 PKR$" 
;-------CALCULATIONS END--------    

;-------------OPTIONS------------------  
wrong: db 10,13, "Wrong choice Exiting.........$"
more: db 10,13,"Do you want more? Y/N:$" 
thanks: db 10,13,"ThankYou For Shopping$" 
bill: db 10,13,"Your Bill is: $"   
cusname db 10,13,"Enter your name:$"
user_input db 20 dup(0)  
;-------------OPTIONS END--------------- 
 
;---------------------PRINT BILL--------
msg         db 10, 13, "Enter Your Name:$"
linefeed db 13, 10, "Customer name: $"
bufferSize  db 21  ; 20 char + RETURN
inputLength db 0   ; number of read characters
buffer      db 21 DUP("$") ; actual buffer
;---------------------PRINT BILL END--------

.code  

;########MAIN########
main proc    
    call prog_pr
main endp 
;######MAIN END######

prog_pr proc
mm:     
call clearmy    
mov ax,@data
mov ds,ax

mov dx,offset string1
mov ah,09h
int 21h   

mov dx,offset string2
mov ah,09h
int 21h

mov dx,offset string3
mov ah,09h
int 21h

mov dx,offset string4
mov ah,09h
int 21h

mov dx,offset string5
mov ah,09h
int 21h

mov dx,offset string6
mov ah,09h
int 21h

mov dx,offset string7
mov ah,09h
int 21h

mov dx,offset string8
mov ah,09h
int 21h

mov dx,offset string9
mov ah,09h
int 21h

mov dx,offset string10
mov ah,09h
int 21h

mov dx,offset string11
mov ah,09h
int 21h     

mov ah,01h 
int 21h
mov bl,al
 
cmp bl,31h 
Je option1   ;first option


cmp bl,32h 
Je option2


cmp bl,33h 
Je option3

cmp bl,34h 
Je option4

cmp bl,35h  
Je option5

cmp bl,36h  
Je option6 

call wrong_ch


option1:    
mov dx,offset op1
mov ah,09h
int 21h 
mov ah,01h
int 21h

cmp al,31h 
je rigix1 
cmp al,32h
je rigix2  
cmp al,33h  
je rigix3
cmp al,34h  
je rigix4
cmp al,35h   
je rigix5
cmp al,36h  
je rigix6
cmp al,37h   
je rigix7
cmp al,38h   
je rigix8
cmp al,39h  
je rigix9
call wrong_ch

rigix1: 
call printbill 
mov dx,offset rigixx1
jmp next_option
rigix2: 
call printbill
mov dx,offset rigixx2
jmp next_option 
rigix3:       
call printbill
mov dx,offset rigixx3
jmp next_option
rigix4:       
call printbill
mov dx,offset rigixx4
jmp next_option
rigix5:  
call printbill
mov dx,offset rigixx5
jmp next_option
rigix6:       
call printbill
mov dx,offset rigixx6
jmp next_option
rigix7: 
call printbill
mov dx,offset rigixx7
jmp next_option
rigix8:       
call printbill
mov dx,offset rigixx8
jmp next_option
rigix9:       
call printbill
mov dx,offset rigixx9
jmp next_option   

option2:
mov dx,offset op2
mov ah,09h
int 21h
mov ah,01h
int 21h

cmp al,31h
je risek1
cmp al,32h   
je risek2  
cmp al,33h   
je risek3
cmp al,34h   
je risek4
cmp al,34h   
je risek5
cmp al,36h   
je risek6
cmp al,37h   
je risek7
cmp al,38h   
je risek8
cmp al,39h   
je risek9
call wrong_ch
 
risek1:       
call printbill
mov dx,offset risekx1 
jmp next_option
risek2:       
call printbill
mov dx,offset risekx2
jmp next_option
risek3:       
call printbill
mov dx,offset risekx3
jmp next_option
risek4:       
call printbill
mov dx,offset risekx4
jmp next_option
risek5:       
call printbill
mov dx,offset risekx5
jmp next_option
risek6:       
call printbill
mov dx,offset risekx6
jmp next_option
risek7:       
call printbill
mov dx,offset risekx7
jmp next_option
risek8:       
call printbill
mov dx,offset risekx8
jmp next_option
risek9:       
call printbill
mov dx,offset risekx9
jmp next_option  

option3:
mov dx,offset op3
mov ah,09h
int 21h  
mov ah,01h
int 21h  

cmp al,31h
je zertech1  
cmp al,32h
je zertech2
cmp al,33h
je zertech3
cmp al,34h
je zertech4
cmp al,35h
je zertech5
cmp al,36h
je zertech6
cmp al,37h
je zertech7
cmp al,38h
je zertech8
cmp al,39h
je zertech9
call wrong_ch 

zertech1:   
call printbill
mov dx,offset zertex1
jmp next_option
zertech2:
call printbill
mov dx,offset zertex2
jmp next_option             
zertech3:     
call printbill
mov dx,offset zertex3
jmp next_option
zertech4:     
call printbill
mov dx,offset zertex4
jmp next_option
zertech5:     
call printbill
mov dx,offset zertex5
jmp next_option
zertech6:     
call printbill
mov dx,offset zertex6
jmp next_option
zertech7:     
call printbill
mov dx,offset zertex7
jmp next_option
zertech8:     
call printbill
mov dx,offset zertex8
jmp next_option
zertech9:     
call printbill
mov dx,offset zertex9
jmp next_option

option4:
mov dx,offset op4
mov ah,09h
int 21h 
mov ah,01h
int 21h

cmp al,31h
je flagyl1  
cmp al,32h
je flagyl2
cmp al,33h
je flagyl3
cmp al,34h
je flagyl4
cmp al,35h
je flagyl5
cmp al,36h
je flagyl6
cmp al,37h
je flagyl7
cmp al,38h
je flagyl8
cmp al,39h
je flagyl9
call wrong_ch  

flagyl1:      
call printbill
mov dx,offset flagyx1
jmp next_option
flagyl2:      
call printbill
mov dx,offset flagyx2
jmp next_option
flagyl3:      
call printbill
mov dx,offset flagyx3
jmp next_option
flagyl4:      
call printbill
mov dx,offset flagyx4
jmp next_option
flagyl5:      
call printbill
mov dx,offset flagyx5
jmp next_option
flagyl6:      
call printbill
mov dx,offset flagyx6
jmp next_option
flagyl7:      
call printbill
mov dx,offset flagyx7
jmp next_option
flagyl8:      
call printbill
mov dx,offset flagyx8
jmp next_option
flagyl9:      
call printbill
mov dx,offset flagyx9
jmp next_option
jmp exit

option5:
mov dx,offset op5
mov ah,09h
int 21h 
mov ah,01h
int 21h

cmp al,31h
je amoxile1  
cmp al,32h
je amoxile2
cmp al,33h
je amoxile3
cmp al,34h
je amoxile4
cmp al,35h
je amoxile5
cmp al,36h
je amoxile6
cmp al,37h
je amoxile7
cmp al,38h
je amoxile8
cmp al,39h
je amoxile9
call wrong_ch 

amoxile1:     
call printbill
mov dx,offset amoxyx1
jmp next_option
amoxile2:     
call printbill
mov dx,offset amoxyx2
jmp next_option
amoxile3:     
call printbill
mov dx,offset amoxyx3
jmp next_option
amoxile4:     
call printbill
mov dx,offset amoxyx4
jmp next_option
amoxile5:     
call printbill
mov dx,offset amoxyx5
jmp next_option
amoxile6:     
call printbill
mov dx,offset amoxyx6
jmp next_option
amoxile7:     
call printbill
mov dx,offset amoxyx7
jmp next_option
amoxile8:     
call printbill
mov dx,offset amoxyx8
jmp next_option
amoxile9:     
call printbill
mov dx,offset amoxyx9
jmp next_option


option6:
mov dx,offset op6
mov ah,09h
int 21h
mov ah,01h
int 21h

cmp al,31h
je brufeene1  
cmp al,32h
je brufeene2
cmp al,33h
je brufeene3
cmp al,34h
je brufeene4
cmp al,35h
je brufeene5
cmp al,36h
je brufeene6
cmp al,37h
je brufeene7
cmp al,38h
je brufeene8
cmp al,39h
je brufeene9
call wrong_ch  

brufeene1:    
call printbill
mov dx,offset brufex1
jmp next_option
brufeene2:    
call printbill
mov dx,offset brufex2
jmp next_option
brufeene3:    
call printbill
mov dx,offset brufex3
jmp next_option
brufeene4:    
call printbill
mov dx,offset brufex4
jmp next_option
brufeene5:    
call printbill
mov dx,offset brufex5
jmp next_option
brufeene6:    
call printbill
mov dx,offset brufex6
jmp next_option
brufeene7:    
call printbill
mov dx,offset brufex7
jmp next_option
brufeene8:    
call printbill
mov dx,offset brufex8
jmp next_option
brufeene9:    
call printbill
mov dx,offset brufex9
jmp next_option
  
  
next_option:  
mov ah, 09h
int 21h  

mov dx, offset more
mov ah, 09h
int 21h

mov ah, 01h
int 21h

; Check if the user wants more
cmp al, 'y'
je mm 
cmp al, 'n'   
je no

call wrong_ch 
no:
mov dx,offset thanks
mov ah,09h
int 21h
jmp exit

prog_pr endp 



;-------------------------------------------                               
printbill proc       
mov ax, @data
mov ds, ax
lea dx, msg
mov ah, 09h ;output
int 21h

mov dx, offset bufferSize ; load our pointer to the beginning of the structure
mov ah, 10 ; GetLine function
int 21h  
      
mov ax, @data 
mov ds , ax 
lea dx, linefeed
mov ah, 09 ;output
int 21h

mov ax, @data 
mov ds , ax 
lea dx, buffer
mov ah, 09 ;output
int 21h 

mov dx,offset bill
mov ah,09
int 21h     
ret        
printbill endp    
    
;---------------------------------------------  
;#############################################
clearmy proc     
    ;--CLEARSCREEN
    MOV AX,0600H   ;SCROLL WHOLE PAGE
    MOV BH,07
    MOV CX,0000
    MOV DX,184FH
    INT 10H      
    ;--SETTING POSITION TO START
    MOV AH,2   ;CURSOR
    MOV BH,00  ;PAGE
    MOV DL,00  ;COLUMN
    MOV DH,00  ;ROW
    INT 10H                                   ; call the DOS interrupt    
ret
clearmy endp    
;############################################# 

wrong_ch proc
    mov dx,offset wrong
    mov ah,09h
    int 21h 
    jmp exit
wrong_ch endp

exit:      

end main