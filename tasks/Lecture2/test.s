L1     
       MOV     R0, #4 ; x = 4
       MOV     R1, #0 ; y = 0
L2     
       CMP     R0, #0
       BEQ     L6
       CMP     R0, #2
       BNE     L5
       MOV     R1, #10
L5     
       SUB     R0, R0, #1
       B       L2

L6     ;       the end


