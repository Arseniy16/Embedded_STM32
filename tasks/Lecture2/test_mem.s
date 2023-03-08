L1     
       STR     R10, [R11, #-4]!
       ADD     R10, R11, #0
       SUB     R11, R11, #12

       MOV     R0, #4 ; x = 4
       STR     R0, [R10, #-8]
       MOV     R0, #0 ; y = 0
       STR     R0, [R10, #-12]

L2     
       LDR     R0, [R10, #-8]
       CMP     R0, #0
       BEQ     L6

       LDR     R0, [R10, #-8]
       CMP     R0, #2
       BNE     L5

       MOV     R0, #10
       STR     R0, [R10, #-12]

L5     
       LDR     R0, [R10, #-8]
       SUB     R0, R0, #1
       STR     R0, [R10, #-8]
       B       L2

L6     
       MOV     R0, #0
       ADD     R11, R10, #0
       LDR     R10, [R11], #4


