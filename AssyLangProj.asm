;Joseph Matulewicz
;
         BR      main        
weight:   .EQUATE 10          ;constant
ship:   .EQUATE 4           ;local variable #2d
stop:   .EQUATE 2           ;local variable #2d
cost:   .EQUATE 0           ;local variable #2d
;
main:    SUBSP   6,i         ;push #ship #stop #cost
         DECI    ship,s     ;scanf("%d %d", &ship, &stop)
         DECI    stop,s     
         LDWA    ship,s     ;cost = (ship + stop) / 2 + weight
         ADDA    stop,s     
         ASRA                
         ADDA    weight,i     
         STWA    cost,s     
         STRO    msg,d       ;printf("Can be shipped = %d\n", cost)
         DECO    cost,s     
         LDBA    '\n',i      
         STBA    charOut,d   
         ADDSP   6,i         ;pop #cost #stop #ship
         STOP                
msg:     .ASCII  "This can be shipped, cost = \x00"
         .ASCII  "Cant be shipped, weight = \x00 > 20"
         .END                  
