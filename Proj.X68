**Dissassembler by Jacob McHugh, Kemba Konteh, Brian Clark
**CSS422 Hardware
** Spring 2020
**put variables and constants here
            OPT     CRE                 
start       EQU     $1000    


LOADTESTDATA **loads the data from provided test file at the starting address above ^^^^
    RTS
    NOP
    RTS
    LEA     (A0),A0
    LEA     (A5),A0
    LEA     (A7),A0
    LEA     (A0),A7
    LEA     (A5),A7
    LEA     (A7),A7
    CLR.B     D0
    CLR.B     D7
    CLR.W     D0
    CLR.W     D7
    CLR.L     D0
    CLR.L     D7
    CLR.B     (A0)
    CLR.B     (A7)
    CLR.W     (A0)
    CLR.W     (A7)
    CLR.L     (A0)
    CLR.L     (A7)
    CLR.B     (A0)+
    CLR.B     (A7)+
    CLR.W     (A0)+
    CLR.W     (A7)+
    CLR.L     (A0)+
    CLR.L     (A7)+
    CLR.B     -(A0)
    CLR.B     -(A7)
    CLR.W     -(A0)
    CLR.W     -(A7)
    CLR.L     -(A0)
    CLR.L     -(A7)
    MOVE.B    D0,D1
    MOVE.B    D0,(A0)
    MOVE.B    D0,(A0)+
    MOVE.B    D0,-(A0)
    MOVE.B    (A0),D0
    MOVE.B    (A0),(A1)
    MOVE.B    (A0),(A1)+
    MOVE.B    (A0),-(A1)
    MOVE.B    (A0)+,D0
    MOVE.B    (A0)+,(A1)
    MOVE.B    (A0)+,(A1)+
    MOVE.B    (A0)+,-(A1)
    MOVE.B    -(A0),D0
    MOVE.B    -(A0),(A1)
    MOVE.B    -(A0),(A1)+
    MOVE.B    -(A0),-(A1)
    MOVE.W    D0,D1
    MOVE.W    D0,(A0)
    MOVE.W    D0,(A0)+
    MOVE.W    D0,-(A0)
    MOVE.W    A0,D0
    MOVE.W    A0,(A1)
    MOVE.W    A0,(A1)+
    MOVE.W    A0,-(A1)
    MOVE.W    (A0),D0
    MOVE.W    (A0),(A1)
    MOVE.W    (A0),(A1)+
    MOVE.W    (A0),-(A1)
    MOVE.W    (A0)+,D0
    MOVE.W    (A0)+,(A1)
    MOVE.W    (A0)+,(A1)+
    MOVE.W    (A0)+,-(A1)
    MOVE.W    -(A0),D0
    MOVE.W    -(A0),(A1)
    MOVE.W    -(A0),(A1)+
    MOVE.W    -(A0),-(A1)
    MOVE.L    D0,D1
    MOVE.L    D0,(A0)
    MOVE.L    D0,(A0)+
    MOVE.L    D0,-(A0)
    MOVE.L    A0,D0
    MOVE.L    A0,(A1)
    MOVE.L    A0,(A1)+
    MOVE.L    A0,-(A1)
    MOVE.L    (A0),D0
    MOVE.L    (A0),(A1)
    MOVE.L    (A0),(A1)+
    MOVE.L    (A0),-(A1)
    MOVE.L    (A0)+,D0
    MOVE.L    (A0)+,(A1)
    MOVE.L    (A0)+,(A1)+
    MOVE.L    (A0)+,-(A1)
    MOVE.L    -(A0),D0
    MOVE.L    -(A0),(A1)
    MOVE.L    -(A0),(A1)+
    MOVE.L    -(A0),-(A1)
    

        MOVEM.W   A1-A7,-(A1)
    MOVEM.L   D1-D7,-(A1)
    MOVEM.W   A1/D7,-(A1)
    MOVEM.L   A1/D7,-(A1)
    MOVEM.W   A1-A7,(A1)
    MOVEM.L   D1-D7,(A1)
    MOVEM.W   A1/D7,(A1)
    MOVEM.L   A1/D7,(A1)
    MOVEM.W   (A1)+,A1-A7
    MOVEM.L   (A1)+,D1-D7
    MOVEM.W   (A1)+,A1/D7
    MOVEM.L   (A1)+,A1/D7
    MOVEM.W   (A1),A1-A7
    MOVEM.L   (A1),D1-D7
    MOVEM.W   (A1),A1/D7
    MOVEM.L   (A1),A1/D7
    MOVEA.W    D0,A0
    MOVEA.W    A0,A0
    MOVEA.W    (A0),A0
    MOVEA.W    (A0)+,A0
    MOVEA.W    -(A0),A0
    MOVEA.L    D0,A0
    MOVEA.L    A0,A0
    MOVEA.L    (A0),A0
    MOVEA.L    (A0)+,A0
    MOVEA.L    -(A0),A0  
    ADD.B     D1,D2
    ADD.B     D1,(A1)
    ADD.B     D1,(A1)+
    ADD.B     D1,-(A1)
    ADD.B     (A1),D1
    ADD.B     (A1)+,D1
    ADD.B     -(A1),D1
    ADD.W     D1,D2
    ADD.W     D1,(A1)
    ADD.W     D1,(A1)+
    ADD.W     D1,-(A1)
    ADD.W     (A1),D1
    ADD.W     (A1)+,D1
    ADD.W     -(A1),D1
    ADD.L     D1,D2
    ADD.L     D1,(A1)
    ADD.L     D1,(A1)+
    ADD.L     D1,-(A1)
    ADD.L     (A1),D1
    ADD.L     (A1)+,D1
    ADD.L     -(A1),D1
    ADDA.W        D1,A2
    ADDA.W        (A1),A2
    ADDA.W        (A1)+,A2
    ADDA.W        -(A1),A2
    ADDA.L        D1,A2
    ADDA.L        (A1),A2
    ADDA.L        (A1)+,A2
    ADDA.L        -(A1),A2
    SUB.B     D1,D2
    SUB.B     D1,(A1)
    SUB.B     D1,(A1)+
    SUB.B     D1,-(A1)
    SUB.B     (A1),D1
    SUB.B     (A1)+,D1
    SUB.B     -(A1),D1
    SUB.W     D1,D2
    SUB.W     D1,A1
    SUB.W     D1,(A1)
    SUB.W     D1,(A1)+
    SUB.W     D1,-(A1)
    SUB.W     A1,D1
    SUB.W     (A1),D1
    SUB.W     (A1)+,D1
    SUB.W     -(A1),D1
    SUB.L     D1,D2
    SUB.L     D1,A1
    SUB.L     D1,(A1)
    SUB.L     D1,(A1)+
    SUB.L     D1,-(A1)
    SUB.L     A1,D1
    SUB.L     (A1),D1
    SUB.L     (A1)+,D1
    SUB.L     -(A1),D1    
    MULS.W    D0,D1
    MULS.W    (A0),D1
    MULS.W    -(A0),D1
    MULS.W    (A0)+,D1
    DIVU.W    D0,D1
    DIVU.W    (A0),D1
    DIVU.W    -(A0),D1
    DIVU.W    (A0)+,D1
    AND.B     D1,D2
    AND.B     D1,(A1)
    AND.B     D1,(A1)+
    AND.B     D1,-(A1)
    AND.B     (A1),D1
    AND.B     (A1)+,D1
    AND.B     -(A1),D1
    AND.W     D1,D2
    AND.W     D1,(A1)
    AND.W     D1,(A1)+
    AND.W     D1,-(A1)
    AND.W     (A1),D1
    AND.W     (A1)+,D1
    AND.W     -(A1),D1
    AND.L     D1,D2
    AND.L     D1,(A1)
    AND.L     D1,(A1)+
    AND.L     D1,-(A1)
    AND.L     (A1),D1
    AND.L     (A1)+,D1
    AND.L     -(A1),D1
    OR.B     D1,D2
    OR.B     D1,(A1)
    OR.B     D1,(A1)+
    OR.B     D1,-(A1)
    OR.B     (A1),D1
    OR.B     (A1)+,D1
    OR.B     -(A1),D1
    OR.W     D1,D2
    OR.W     D1,(A1)
    OR.W     D1,(A1)+
    OR.W     D1,-(A1)
    OR.W     (A1),D1
    OR.W     (A1)+,D1
    OR.W     -(A1),D1
    OR.L     D1,D2
    OR.L     D1,(A1)
    OR.L     D1,(A1)+
    OR.L     D1,-(A1)
    OR.L     (A1),D1
    OR.L     (A1)+,D1
    OR.L     -(A1),D1
    LSL.B     D1,D2
    LSL.W     D1,D2
    LSL.W     (A1)
    LSL.W     (A1)+
    LSL.W     -(A1)
    LSL.L     D1,D2
    LSR.B     D1,D2
    LSR.W     D1,D2
    LSR.W     (A1)
    LSR.W     (A1)+
    LSR.W     -(A1)
    LSR.L     D1,D2    
    ASR.B     D1,D2
    ASR.W     D1,D2
    ASR.W     (A1)
    ASR.W     (A1)+
    ASR.W     -(A1)
    ASR.L     D1,D2
    ASL.B     D1,D2
    ASL.W     D1,D2
    ASL.W     (A1)
    ASL.W     (A1)+
    ASL.W     -(A1)
    ASL.L     D1,D2
    ROL.B     D1,D2
    ROL.W     D1,D2
    ROL.W     (A1)
    ROL.W     (A1)+
    ROL.W     -(A1)
    ROL.L     D1,D2
    ROR.B     D1,D2
    ROR.W     D1,D2
    ROR.W     (A1)
    ROR.W     (A1)+
    ROR.W     -(A1)
    ROR.L     D1,D2    
    CMP.B    D0,D1
    CMP.B    (A0),D1
    CMP.B    -(A0),D1
    CMP.B    (A0)+,D1
    CMP.W    D0,D1
    CMP.W    A0,D1
    CMP.W    (A0),D1
    CMP.W    -(A0),D1
    CMP.W    (A0)+,D1
    CMP.L    D0,D1
    CMP.L    A0,D1
    CMP.L    (A0),D1
    CMP.L    -(A0),D1
    CMP.L    (A0)+,D1
    BCC.B     label1
    BCC.B     label2
    BGT.B     label1
    BGT.B     label2
    BLE.B     label1
    BLE.B     label2
    BCC.W     label1
    BCC.W     label2
    BCC.W     label3
    BGT.W     label1
    BGT.W     label2
    BGT.W     label3
    BLE.W     label1
    BLE.W     label2
    BLE.W     label3
    JSR       (A0)
    JSR       $1234
    JSR       $12345678
    JSR       label1
    JSR       label2
    JSR       label3
    NOP
    RTS
label1
    NOP
    RTS
    LEA       $12,A0
    LEA       $1234,A0
    LEA       $12345678,A0
    CLR.B     $12
    CLR.B     $1234
    CLR.B     $12345678
label2
    CLR.W     $12
    CLR.W     $1234
    CLR.W     $12345678
    CLR.L     $12
    CLR.L     $1234
    CLR.L     $12345678
    MOVEQ     #$0,D0
    MOVEQ     #$12,D0
    MOVEQ     #$FF,D0
    ADDI.B    #$12,D1
    ADDI.B    #$12,(A0)
    ADDI.B    #$12,(A0)+
    ADDI.B    #$12,-(A0)
    ADDI.B    #$12,$1234
label3
    ADDI.B    #$12,$12345678
    ADDI.W    #$1234,D1
    ADDI.W    #$1234,(A0)
    ADDI.W    #$1234,(A0)+
    ADDI.W    #$1234,-(A0)
    ADDI.W    #$1234,$1234
    ADDI.W    #$1234,$12345678
    ADDI.L    #$12345678,D1
    ADDI.L    #$12345678,(A0)
    ADDI.L    #$12345678,(A0)+
    ADDI.L    #$12345678,-(A0)
    ADDI.L    #$12345678,$1234
    ADDI.L    #$12345678,$12345678
    ADDQ      #$1,D0
    ADDQ      #$3,D0
    ADDQ      #$8,D0
    MOVE.B    $12,D1
    MOVE.B    $12,(A0)
    MOVE.B    $12,(A0)+
    MOVE.B    $12,-(A0)
    MOVE.B    $1234,D0
    MOVE.B    $1234,(A1)
    MOVE.B    $1234,(A1)+
    MOVE.B    $1234,-(A1)
    MOVE.B    $12345678,D0
    MOVE.B    $12345678,(A1)
    MOVE.B    $12345678,(A1)+
    MOVE.B    $12345678,-(A1)
    MOVE.B    #$12,D0
    MOVE.B    #$12,(A1)
    MOVE.B    #$12,(A1)+
    MOVE.B    #$12,-(A1)
    MOVE.W    $12,D1
    MOVE.W    $12,(A0)
    MOVE.W    $12,(A0)+
    MOVE.W    $12,-(A0)
    MOVE.W    $1234,D0
    MOVE.W    $1234,(A1)
    MOVE.W    $1234,(A1)+
    MOVE.W    $1234,-(A1)
    MOVE.W    $12345678,D0
    MOVE.W    $12345678,(A1)
    MOVE.W    $12345678,(A1)+
    MOVE.W    $12345678,-(A1)
    MOVE.W    #$1234,D0
    MOVE.W    #$1234,(A1)
    MOVE.W    #$1234,(A1)+
    MOVE.W    #$1234,-(A1)
    MOVE.L    $12,D1
    MOVE.L    $12,(A0)
    MOVE.L    $12,(A0)+
    MOVE.L    $12,-(A0)
    MOVE.L    $1234,D0
    MOVE.L    $1234,(A1)
    MOVE.L    $1234,(A1)+
    MOVE.L    $1234,-(A1)
    MOVE.L    $12345678,D0
    MOVE.L    $12345678,(A1)
    MOVE.L    $12345678,(A1)+
    MOVE.L    $12345678,-(A1)
    MOVE.L    #$12345678,D0
    MOVE.L    #$12345678,(A1)
    MOVE.L    #$12345678,(A1)+
    MOVE.L    #$12345678,-(A1)
    MOVEM.W   A1-A7,$12
    MOVEM.L   D1-D7,$12
    MOVEM.W   A1/D7,$12
    MOVEM.L   A1/D7,$12
    MOVEM.W   A1-A7,$1234
    MOVEM.L   D1-D7,$1234
    MOVEM.W   A1/D7,$1234
    MOVEM.L   A1/D7,$1234
    MOVEM.W   A1-A7,$12345678
    MOVEM.L   D1-D7,$12345678
    MOVEM.W   A1/D7,$12345678
    MOVEM.L   A1/D7,$12345678
    MOVEM.W   $12,A1-A7
    MOVEM.L   $12,D1-D7
    MOVEM.W   $12,A1/D7
    MOVEM.L   $12,A1/D7
    MOVEM.W   $1234,A1-A7
    MOVEM.L   $1234,D1-D7
    MOVEM.W   $1234,A1/D7
    MOVEM.L   $1234,A1/D7
    MOVEM.W   $12345678,A1-A7
    MOVEM.L   $12345678,D1-D7
    MOVEM.W   $12345678,A1/D7
    MOVEM.L   $12345678,A1/D7
    ADD.B     D1,$12
    ADD.B     D1,$1234
    ADD.B     D1,$12345678
    ADD.B     $12,D1
    ADD.B     $1234,D1
    ADD.B     $12345678,D1
    ADD.B     #$12,D1
    ADD.W     D1,$12
    ADD.W     D1,$1234
    ADD.W     D1,$12345678
    ADD.W     $12,D1
    ADD.W     $1234,D1
    ADD.W     $12345678,D1
    ADD.W     #$1234,D1
    ADD.L     D1,$12
    ADD.L     D1,$1234
    ADD.L     D1,$12345678
    ADD.L     $12,D1
    ADD.L     $1234,D1
    ADD.L     $12345678,D1
    ADD.L     #$12345678,D1
    ADDA.W    $12,A2
    ADDA.W    $1234,A2
    ADDA.W    $12345678,A2
    ADDA.W    #$1234,A2
    ADDA.L    $12,A2
    ADDA.L    $1234,A2
    ADDA.L    $12345678,A2
    ADDA.L    #$12345678,A2
    SUB.B     D1,$12
    SUB.B     D1,$1234
    SUB.B     D1,$12345678
    SUB.B     $12,D1
    SUB.B     $1234,D1
    SUB.B     $12345678,D1
    SUB.B     #$12,D1
    SUB.W     D1,$12
    SUB.W     D1,$1234
    SUB.W     D1,$12345678
    SUB.W     $12,D1
    SUB.W     $1234,D1
    SUB.W     $12345678,D1
    SUB.W     #$1234,D1
    SUB.L     D1,$12
    SUB.L     D1,$1234
    SUB.L     D1,$12345678
    SUB.L     $12,D1
    SUB.L     $1234,D1
    SUB.L     $12345678,D1
    SUB.L     #$12345678,D1
    MULS.W    $12,D1
    MULS.W    $1234,D1
    MULS.W    $12345678,D1
    MULS.W    #$1234,D1
    DIVU.W    $12,D1
    DIVU.W    $1234,D1
    DIVU.W    $12345678,D1
    DIVU.W    #$1234,D1
    AND.B     D1,$12
    AND.B     D1,$1234
    AND.B     D1,$12345678
    AND.B     $12,D1
    AND.B     $1234,D1
    AND.B     $12345678,D1
    AND.B     #$12,D1
    AND.W     D1,$12
    AND.W     D1,$1234
    AND.W     D1,$12345678
    AND.W     $12,D1
    AND.W     $1234,D1
    AND.W     $12345678,D1
    AND.W     #$1234,D1
    AND.L     D1,$12
    AND.L     D1,$1234
    AND.L     D1,$12345678
    AND.L     $12,D1
    AND.L     $1234,D1
    AND.L     $12345678,D1
    AND.L     #$12345678,D1
    LSL.B     #$1,D2
    LSL.W     #$2,D2
    LSL.L     #$3,D2
    LSL.W     $12
    LSL.W     $1234
    LSL.W     $12345678
    ASR.B     #$1,D2
    ASR.W     #$2,D2
    ASR.L     #$3,D2
    ASR.W     $12
    ASR.W     $1234
    ASR.W     $12345678
    ROL.B     #$1,D2
    ROL.W     #$2,D2
    ROL.L     #$3,D2
    ROL.W     $12
    ROL.W     $1234
    ROL.W     $12345678
label4    CMP.B     $12,D1
    CMP.B     $1234,D1
    CMP.B     $12345678,D1
    CMP.B     #$12,D1
    CMP.W     $12,D1
    CMP.W     $1234,D1
    CMP.W     $12345678,D1
    CMP.W     #$1234,D1
    CMP.L     $12,D1
    CMP.L     $1234,D1
    CMP.L     $12345678,D1
    CMP.L     #$12345678,D1
    BCC.B     label4
    BGT.B     label4
    BLE.B     label4
    BCC.W     label1
    BCC.W     label2
    BCC.W     label3
    BGT.W     label1
    BGT.W     label2
    BGT.W     label3
    BLE.W     label1
    BLE.W     label2
    BLE.W     label3
    JSR       label1
    JSR       label2
    JSR       label3
    MOVEA     D1,A1
    ADDA      D1,A1
    BTST      #1,D1


           
data        EQU     $4000               
stack       EQU     $A000               
MIN_ADD      EQU     $00000000          
MAX_ADD      EQU     $00FFFFFF 
FLAG_BAD     EQU     0          
FLAG_GOOD    EQU     1           
FOUR_BITSHIFT      EQU     4            
EIGHT_BITSHIFT      EQU     8   
TWELVE_BITSHIFT     EQU     12
SIXTEEN_BITSHIFT     EQU     16
T_0       EQU     00 
T_1       EQU     01
T_2       EQU     02
T_13      EQU     13 
length      EQU     0  
P_COUNTER  EQU     20  
CR          EQU     $0D  
LF          EQU     $0A 


            ORG     start
            
            BSR     MESSAGE_introduction_message         * introduction_message
STARTMAIN   BSR     CLEAR               
            LEA     stack,SP    
            LEA     goodbuff,A2
            MOVEA.L A2,A6
    
STARTINPUT    BSR     INPUT

**get user input for start and end position
            BSR     CHECK_ADD            
            CMP     #FLAG_BAD,D5
            BEQ     STARTINPUT 
            
            BSR     PREP_BUFFER
            
            MOVE.B  #T_1,D0
            LEA     MESSAGE_MORE,A1
            MOVE.W  strMore_len,D1
            TRAP    #15
            
            MOVE.B  #T_2,D0
            TRAP    #15
            
            MOVE.B  (A1),D3 
            
            MOVE.B  #$57,(A1)+ 
            MOVE.B  #$6F,(A1)  
            
            CMP.B   #$31,D3
            BEQ     STARTMAIN
             
            BEQ     STARTMAIN
            
            BSR     MESSAGE_EXIT
                         
            JMP     end
        

**legend for next section
*A0 starting address
*A4 ending address


MESSAGE_introduction_message
            MOVE.B  #13,D0
            LEA     introduction_message,A1
            MOVE.W  introduction_message_len,D1
            TRAP    #15
            RTS

MESSAGE_EXIT            
            MOVE.B  #T_1,D0
            LEA     exit,A1
            MOVE.W  exit_len,D1
            TRAP    #15
            RTS        

CLEAR:
            CLR     D0
            CLR     D1
            CLR     D2
            CLR     D3
            CLR     D4
            CLR     D5
            CLR     D6
            CLR     D7
            
            RTS
               
CHECK_ADD:
CHECKA_START
            CMP.B   #$00,D5
            BEQ     ERROR_CHECKA
            MOVE.B  #FLAG_GOOD,D5

F_ADD    MOVE.L  A0,D2 
            MOVE.L  D2,D3
            ANDI.B  #1,D3
            CMP.B   #1,D3
            BNE     L_ADD
SUB_I        SUBI.B  #$1,D2 * odd address will be even
            MOVE.L  D2,A0
L_ADD     MOVE.L  A4,D2
            MOVE.L  D2,D3
            ANDI.B  #1,D3
            CMP.B   #1,D3
            BNE     EQU_1 
SUB_TWO        SUBI.B  #$1,D2 **odd address will be even
            MOVE.L  D2,A4
   
EQU_1      	CMP.L   #MAX_ADD,A0 **check high end range of starting address
            BLT     EQU_2
         
            JMP     ERROR_CHECKA
            
EQU_2        CMP.L   #MAX_ADD,A4 **check high end range of ending address
            BLE     EQU_3
            JMP     ERROR_CHECKA                     
            
EQU_3        CMPA.L  A0,A4 **is the starting address greater than the ending address?
            BGT     END_CHECKA
               
ERROR_CHECKA    *error
            MOVE.B  #T_0,D0
            LEA     MESSAGE_END_ERROR1,A1
            MOVE.W  str_len3,D1
            TRAP    #15            
            MOVE.B  #FLAG_BAD,D5      
END_CHECKA      RTS

INPUT:
            MOVE.B  #T_1,D0
            LEA     MESSAGE_START_ADDR,A1
            MOVE.W  str_len1,D1         
            TRAP    #15
            ADDA.L  #str_len1,A1 **add the end
            MOVE.B  #T_2,D0      
            TRAP    #15
            JSR     ASCII_2_HEX  **convert ascii to hex
            CMP.B   #$00,D5
            BEQ     endInput
            
            MOVEA.L A0,A4         
            MOVE.B  #T_1,D0
            LEA     MESSAGE_END_ADDR,A1
            MOVE.W  str_len2,D1         
            TRAP    #15         
            ADDA.L  #str_len2,A1
            MOVE.B  #T_2,D0
            TRAP    #15
            JSR     ASCII_2_HEX
            CMP.B   #$00,D5
            BEQ     endInput
            
            MOVEA.L A4,A3
            MOVEA.L A0,A4
            MOVEA.L A3,A0                   
endInput    RTS

ASCII_2_HEX

            MOVEM.L D0-D4,-(SP)
            MOVE.B  #FLAG_GOOD,D5
            JSR     CLEAR_REGISTERS
            MOVE    #length,D6      
      
LOOP_TWO       MOVE.B  (A1)+,D3 **checking range of ascii byte
            CMP.B   #$30,D3 
            BLT     ERROR_ASCII
            CMP.B   #$3A,D3
            BLT     DEC_2_HEX      
            CMP.B   #$41,D3
            BLT     ERROR_ASCII
            CMP.B   #$47,D3
            BLT     C_2_HEX
            CMP.B   #$61,D3
            BLT     ERROR_ASCII
            CMP.B   #$67,D3
            BLT     L_2_HEX
            CMP.B   #$66,D3
            BGT     ERROR_ASCII  
      
resume    
            ADD     #1,D6
            CMP     #6,D6
            BEQ     return          
            CMP.B   #$00,(A1)
            BEQ     return 
            ASL.L   #4,D4          
            JMP     LOOP_TWO

DEC_2_HEX
            SUBI.B  #$30,D3
            ADD.B   D3,D4
            JMP     resume

C_2_HEX

            SUBI.B  #$37,D3
            ADD.B   D3,D4
            JMP     resume

L_2_HEX
            SUBI.B  #$57,D3
            ADD.B   D3,D4
            JMP     resume

ERROR_ASCII  MOVE.B  #00,D5   
            JMP     return

return      MOVE.L  D4,A0
            CLR     D6
            MOVEM.L (SP)+,D0-D4    
            RTS
        

FILL_ADDRESS:
            MOVEA.L  A2,A1         
            JSR      GET_LONG
            MOVE.B   #$09,(A2)+                                   
            RTS
          
            

** legend for next section
* A0 address
* A1 trap addr
* A2 bfr ptr
* A4 end addr
* D0 task#
* D1 stored length
* D7 counter

PREP_BUFFER    MOVEA.L A6,A2         
            BSR     FILL_ADDRESS        * store current address
            JSR     DECODE_OPCODE
            MOVE.B  #00,(A2)
            MOVE.B  #T_13,D0
            TRAP    #15
                              
            CMPA.L   A0,A4
            BLE      END_BUFFER
            
            ADDI    #1,D7
            CMP     #P_COUNTER,D7
            BNE     PREP_BUFFER
            
            MOVE.B  #T_1,D0
            LEA     MESSAGE_CONTINUE,A1
            MOVE.W  str_en_len,D1
            TRAP    #15
            
            MOVE.B  #T_2,D0
            TRAP    #15
            
            MOVE.B  #$50,(A1)
            
            CLR     D7
            JMP     PREP_BUFFER
            
END_BUFFER     RTS 

       
**legend for next section


*A0,A5 Mem ptr
*A2 +bfr ptr
*A5 jump table index
*A6 prev bfr location
*D2 size of function
*D4 shift size
*D5 P/F flg
*D6 copy D7
*D7 word value

DECODE_OPCODE    MOVEM.L A4-A6/D0-D4/D6-D7,-(SP)
            JSR     CLEAR_REGISTERS
            MOVE.B  #FLAG_GOOD,D5
            MOVE.W  (A0)+,D7
            MOVEA.L A2,A3               
            JSR     GET_OPCODE

DECODE_RTN    MOVEM.L (SP)+,D6-D7/D0-D4/A4-A6
            RTS
            
                             
GET_OPCODE  MOVE.W  D7,D6
            MOVE.B  #TWELVE_BITSHIFT,D4
            LSR.W   D4,D6
            MULU    #6,D6
            LEA     OPCODE_JMPTBL,A5
            JSR     00(A5,D6)
            RTS

OPCODE_JMPTBL      
            JMP     HEX_ONE_0000
            JMP     HEX_ONE_0001            
            JMP     HEX_ONE_0010
            JMP     HEX_ONE_0011
            JMP     HEX_ONE_0100
            JMP     HEX_ONE_0101
            JMP     HEX_ONE_0110
            JMP     HEX_ONE_0111
            JMP     HEX_ONE_1000
            JMP     HEX_ONE_1001
            JMP     HEX_ONE_1010
			JMP     HEX_ONE_1011
            JMP     HEX_ONE_1100
            JMP     HEX_ONE_1101
            JMP     HEX_ONE_1110
			JMP     HEX_ONE_1111
**move.b

HEX_ONE_0000

HEX_ONE_0001   MOVE.B  #'M',(A2)+
            MOVE.B  #'O',(A2)+
            MOVE.B  #'V',(A2)+
            MOVE.B  #'E',(A2)+
            MOVE.B  #'.',(A2)+
            MOVE.B  #'B',(A2)+
            MOVE.B  #' ',(A2)+
            MOVE.B  #' ',(A2)+
            MOVE.B  #' ',(A2)+  
            JSR     GET_EA
            MOVE.B  #',',(A2)+
            JSR     SWAP_4_MOVE
            JSR     GET_EA     
END_0001     RTS 
            
**move.l, movea.l
HEX_ONE_0010   MOVE.B  #'M',(A2)+
            MOVE.B  #'O',(A2)+
            MOVE.B  #'V',(A2)+
            MOVE.B  #'E',(A2)+
            MOVE.B  D7,D6
            LSR.L   #6,D6
            ANDI.W  #$07,D6
            CMP.B   #$1,D6 **is this movea
            BNE     MOVE_L
            MOVE.B  #'A',(A2)+
            MOVE.B  #'.',(A2)+
            MOVE.B  #'L',(A2)+
            MOVE.B  #' ',(A2)+
            MOVE.B  #' ',(A2)+
            JMP     MOVE_LEA
MOVE_L       MOVE.B  #'.',(A2)+
            MOVE.B  #'L',(A2)+
            MOVE.B  #' ',(A2)+
            MOVE.B  #' ',(A2)+
            MOVE.B  #' ',(A2)+  
MOVE_LEA     JSR     GET_EA
            MOVE.B  #',',(A2)+
            JSR     SWAP_4_MOVE
            JSR     GET_EA     
END_0010     RTS
 
 
 
**move.w, movea.w
HEX_ONE_0011   MOVE.B  #'M',(A2)+
            MOVE.B  #'O',(A2)+
            MOVE.B  #'V',(A2)+
            MOVE.B  #'E',(A2)+
            MOVE.B  D7,D6
            LSR.L   #6,D6
            ANDI.W  #$07,D6
            CMP.B   #$1,D6
            BNE     MOVE_W **is thsi movea
            MOVE.B  #'A',(A2)+
            MOVE.B  #'.',(A2)+
            MOVE.B  #'W',(A2)+
            MOVE.B  #' ',(A2)+
            MOVE.B  #' ',(A2)+
            JMP     MOVE_WEA
MOVE_W       MOVE.B  #'.',(A2)+
            MOVE.B  #'W',(A2)+
            MOVE.B  #' ',(A2)+
            MOVE.B  #' ',(A2)+
            MOVE.B  #' ',(A2)+  
MOVE_WEA     JSR     GET_EA
            MOVE.B  #',',(A2)+
            JSR     SWAP_4_MOVE
            JSR     GET_EA     
END_0011     RTS 



SWAP_4_MOVE   CLR.L   D3
            MOVE.W  D7,D6
            LSR.W   #EIGHT_BITSHIFT,D6
            LSR.W   #1,D6
            ANDI.W  #$0007,D6
            OR.W    D6,D3
            MOVE.W  D7,D6
            LSR.W   #3,D6
            ANDI.W  #$0038,D6
            OR.W    D6,D3
            JSR     MOVE_SIZE
            MOVE.W  D3,D7
            RTS
            
            
MOVE_SIZE    MOVE.W  D7,D6
            LSR.W   #EIGHT_BITSHIFT,D6
            LSR.W   #FOUR_BITSHIFT,D6          
            ANDI.W  #$0003,D6
            CMP.B   #$1,D6
            BEQ     M_SIZE_END
            CMP.B   #$2,D6
            BEQ     MOVE_SIZEL
            CMP.B   #$3,D6
            BNE     BAD_INSTANCE
MOVE_SIZEW   ORI.W   #$0040,D3
            JMP     M_SIZE_END
MOVE_SIZEL   ORI.W   #$0080,D3
M_SIZE_END    RTS 



**movem,jsr,jmp,lea,rts 
HEX_ONE_0100   MOVE.W  D7,D6
            ANDI.W  #$0100,D6
            CMP.W   #$0100,D6
            BEQ     OP_LEA
            MOVE.W  D7,D6
            MOVE.B  #EIGHT_BITSHIFT,D4
            LSR.W   D4,D6
            ANDI.W  #$000F,D6
            MULU    #6,D6
            LEA     JMP_TBL_0100,A5
            JSR     00(A5,D6)
            JMP     END_0100
            
OP_LEA       MOVE.B  #'L',(A2)+
            MOVE.B  #'E',(A2)+
            MOVE.B  #'A',(A2)+
            MOVE.B  #' ',(A2)+
            MOVE.B  #$09,(A2)+ 
            JSR     GET_EA
            MOVE.B  #',',(A2)+
            MOVE.B  #'A',(A2)+
            MOVE.W  D7,D6
            MOVE.B  #9,D4
            LSR.W   D4,D6
            ANDI.W  #$000F,D6
            ADD.B   #$30,D6
            MOVE.B  D6,(A2)+
			
			
			
			
			
END_0100     RTS

HEX_ONE_0101   JSR     BAD_INSTANCE             * nad code
            RTS
            
            ***** MOVEM Command
HEX_ONE_0110   JSR     BAD_INSTANCE
            ADDQ.W  #2,A0
            RTS

HEX_ONE_0111   JSR     BAD_INSTANCE             * bad code
            RTS


**or
HEX_ONE_1000   MOVE.W  D7,D6
            LSR.L   #6,D6
            ANDI.W  #$03,D6
            CMP.B   #$3,D6 
            BNE     OP_OR
            JMP     BAD_INSTANCE             

OP_OR        MOVE.B  #'O',(A2)+
            MOVE.B  #'R',(A2)+
            MOVE.B  #'.',(A2)+            
            JSR     SIZE_TO_BUFF
            MOVE.B  #' ',(A2)+
            MOVE.B  #' ',(A2)+
            MOVE.B  #' ',(A2)+
            MOVE.B  #' ',(A2)+
            MOVE.B  #' ',(A2)+
            JSR     GET_DIR_BIT
            CMP.B   #%0,D6
            BNE     OP_OR01
            JSR     GET_EA
            MOVE.B  #',',(A2)+
            MOVE.B  #'D',(A2)+
            JSR     H_REG_BITS
			
			
            JMP     END_1000
            
OP_OR01      MOVE.B  #'D',(A2)+
            JSR     H_REG_BITS
            MOVE.B  #',',(A2)+
            JSR     GET_EA

END_1000     RTS


**sub
HEX_ONE_1001   MOVE.B  #'S',(A2)+
            MOVE.B  #'U',(A2)+
            MOVE.B  #'B',(A2)+
            JSR     GET_SIZE
            CMP.B   #%11,D6
            BNE     OP_SUB
            
OP_SUB       MOVE.B  #'.',(A2)+
            JSR     SIZE_TO_BUFF
            MOVE.B  #' ',(A2)+
            MOVE.B  #' ',(A2)+
            MOVE.B  #' ',(A2)+
            MOVE.B  #' ',(A2)+
            JSR     GET_DIR_BIT
            CMP.B   #%0,D6
            BNE     OP_SUB01
            JSR     GET_EA
            MOVE.B  #',',(A2)+
            MOVE.B  #'D',(A2)+
            JSR     H_REG_BITS
            JMP     END_1001
            
OP_SUB01     MOVE.B  #'D',(A2)+
            JSR     H_REG_BITS
            MOVE.B  #',',(A2)+
            JSR     GET_EA
            
END_1001     RTS            

HEX_ONE_1010   JSR     BAD_INSTANCE
            RTS


            
OP_CMPE_OR    MOVE.W  D7,D6
            JSR     GET_DIR_BIT
            CMP.B   #%0,D6
            BNE     OP_EOR           
                   
OP_CMP       MOVE.B  #'C',(A2)+
            MOVE.B  #'M',(A2)+
            MOVE.B  #'P',(A2)+
            MOVE.B  #'.',(A2)+
            JSR     SIZE_TO_BUFF
            MOVE.B  #' ',(A2)+
            MOVE.B  #' ',(A2)+
            MOVE.B  #' ',(A2)+
            MOVE.B  #' ',(A2)+
            JSR     GET_EA 
            MOVE.B  #',',(A2)+
            MOVE.B  #'D',(A2)+  
            JSR     H_REG_BITS
            JMP     END_1010
      
                        
OP_EOR       MOVE.B  #'E',(A2)+
            MOVE.B  #'O',(A2)+
            MOVE.B  #'R',(A2)+
            MOVE.B  #'.',(A2)+
            JSR     SIZE_TO_BUFF
            MOVE.B  #' ',(A2)+
            MOVE.B  #' ',(A2)+
            MOVE.B  #' ',(A2)+
            MOVE.B  #' ',(A2)+
            MOVE.B  #'D',(A2)+  
            JSR     H_REG_BITS       
            MOVE.B  #',',(A2)+
            JSR     GET_EA
                             
END_1010     RTS

HEX_ONE_1011   JSR     GET_SIZE             * return size  in 6 & 7 into D6
            CMP.B   #%11,D6             * determine if a CMPA
            BNE     OP_CMP_ERROR
            MOVE.B  #'C',(A2)+          * Put SUBA into Buff
            MOVE.B  #'M',(A2)+
            MOVE.B  #'P',(A2)+
            MOVE.B  #'A',(A2)+
            MOVE.B  #'.',(A2)+
            MOVE.W  D7,D6               * fresh copy of instruction
            LSR.L   #EIGHT_BITSHIFT,D6          * shift to right to isolate 8th bits
            ANDI.W  #$0001,D6           * Isolate last bit for size
            CMP.B   #%1,D6              * compare for a 1 to determine
            BEQ     CMPA_L               * jump to long, else word
            MOVE.B  #'W',(A2)+          * add word size into buffer
            JMP     OP_CMPA              * Skip to adding padding and destination
CMPA_L      MOVE.B  #'L',(A2)+          * add long size into buffer           
OP_CMPA     MOVE.B  #' ',(A2)+
            MOVE.B  #' ',(A2)+
            MOVE.B  #' ',(A2)+

            JSR     GET_EA              * get source operand
            MOVE.B  #',',(A2)+
            MOVE.B  #'A',(A2)+
            JSR     H_REG_BITS         * Get address register number
            JMP     END_1011             * Skip to end of sub: hex1_1011
            
OP_CMP_ERROR    MOVE.W  D7,D6               * fresh value
            JSR     GET_DIR_BIT           * determine the direction bit 1 = eor 0 = cmp
            CMP.B   #%0,D6              * yes, go into CMP
            BNE     opEOR               * no, go into EOR            
                   
opCMP       MOVE.B  #'C',(A2)+          * Populate CMP
            MOVE.B  #'M',(A2)+
            MOVE.B  #'P',(A2)+
            MOVE.B  #'.',(A2)+
            JSR     SIZE_TO_BUFF        * Determine & add size to buffer
            MOVE.B  #' ',(A2)+
            MOVE.B  #' ',(A2)+
            MOVE.B  #' ',(A2)+
            MOVE.B  #' ',(A2)+
            JSR     GET_EA            * Source Operand
            MOVE.B  #',',(A2)+
            MOVE.B  #'D',(A2)+  
            JSR     H_REG_BITS         * Add register number to buffer
            JMP     END_1011             * Skip to end of sub: hex1_1011
      
                        
opEOR       MOVE.B  #'E',(A2)+          * Populate EOR
            MOVE.B  #'O',(A2)+
            MOVE.B  #'R',(A2)+
            MOVE.B  #'.',(A2)+
            JSR     SIZE_TO_BUFF         * Determine & add size to buffer
            MOVE.B  #' ',(A2)+
            MOVE.B  #' ',(A2)+
            MOVE.B  #' ',(A2)+
            MOVE.B  #' ',(A2)+
            MOVE.B  #'D',(A2)+  
            JSR     H_REG_BITS        * Add register number to buffer            
            MOVE.B  #',',(A2)+
            JSR     GET_EA               * Destination Operand
                             
END_1011     RTS


HEX_ONE_1100   MOVE.W  D7,D6
OP_MULU      LSR.L   #6,D6
            ANDI.W  #$3,D6
            CMP.B   #$3,D6
            BEQ     M_MULU
            JMP     OP_AND_EXG
M_MULU    MOVE.W  D7,D6
            LSR.L   #3,D6
            ANDI.W  #$7,D6
            CMP.B   #$7,D6
            BEQ     MOVE_PTR
            JMP     BAD_INSTANCE     

MOVE_PTR     ADDQ.W  #2,A0 **increments the pointer
            JMP     BAD_INSTANCE
        
OP_AND_EXG    MOVE.W  D7,D6
            LSR.L   #3,D6
            ANDI.B  #$1F,D6
            CMP.B   #$08,D6
            BEQ     OP_EXGD2D
            CMP.B   #$09,D6
            BEQ     OP_EXGA2A
            CMP.B   #$11,D6
            BEQ     OP_EXGD2A
            
            
OP_AND       MOVE.B  #'A',(A2)+
            MOVE.B  #'N',(A2)+
            MOVE.B  #'D',(A2)+
            MOVE.B  #'.',(A2)+            
            JSR     SIZE_TO_BUFF
            MOVE.B  #' ',(A2)+
            MOVE.B  #' ',(A2)+
            MOVE.B  #' ',(A2)+
            MOVE.B  #' ',(A2)+
            JSR     GET_DIR_BIT
            CMP.B   #%0,D6 **is teh effective address first?
            BNE     OP_AND01 **if no
            JSR     GET_EA    **else
            MOVE.B  #',',(A2)+
            MOVE.B  #'D',(A2)+
            JSR     H_REG_BITS
            JMP     END_1100
            
OP_AND01     MOVE.B  #'D',(A2)+
            JSR     H_REG_BITS
            MOVE.B  #',',(A2)+
            JSR     GET_EA
            JMP     END_1100

OP_EXGD2D    MOVE.B #'E',(A2)+
            MOVE.B #'X',(A2)+
            MOVE.B #'G',(A2)+
            MOVE.B #' ',(A2)+
            MOVE.B #' ',(A2)+
            MOVE.B #' ',(A2)+
            MOVE.B #' ',(A2)+
            MOVE.B #' ',(A2)+
            MOVE.B #' ',(A2)+
            MOVE.B #'D',(A2)+
            JSR    H_REG_BITS
            MOVE.B #',',(A2)+
            JSR    GET_EA
            JMP    END_1100
                        
OP_EXGA2A    MOVE.B #'E',(A2)+
            MOVE.B #'X',(A2)+           
            MOVE.B #'G',(A2)+
            MOVE.B #' ',(A2)+
            MOVE.B #' ',(A2)+
            MOVE.B #' ',(A2)+
            MOVE.B #' ',(A2)+
            MOVE.B #' ',(A2)+
            MOVE.B #' ',(A2)+
            MOVE.B #'A',(A2)+
            JSR    H_REG_BITS
            MOVE.B #',',(A2)+
            JSR    GET_EA
            JMP    END_1100
            
OP_EXGD2A    MOVE.B #'E',(A2)+
            MOVE.B #'X',(A2)+           
            MOVE.B #'G',(A2)+
            MOVE.B #' ',(A2)+
            MOVE.B #' ',(A2)+
            MOVE.B #' ',(A2)+
            MOVE.B #' ',(A2)+
            MOVE.B #' ',(A2)+
            MOVE.B #' ',(A2)+
            MOVE.B #'D',(A2)+
            JSR    H_REG_BITS
            MOVE.B #',',(A2)+
            JSR    GET_EA
            JMP    END_1100

END_1100     RTS

**add
HEX_ONE_1101   MOVE.B  #'A',(A2)+
            MOVE.B  #'D',(A2)+
            MOVE.B  #'D',(A2)+
            JSR     GET_SIZE
            BRA     opADD
           
            
opADD       MOVE.B  #'.',(A2)+
            JSR     SIZE_TO_BUFF
            MOVE.B  #' ',(A2)+
            MOVE.B  #' ',(A2)+
            MOVE.B  #' ',(A2)+
            MOVE.B  #' ',(A2)+
            JSR     GET_DIR_BIT
            CMP.B   #%0,D6 **is the effective address first?
            BNE     opADD01 **if no
            JSR     GET_EA  **else
            MOVE.B  #',',(A2)+
            MOVE.B  #'D',(A2)+
            JSR     H_REG_BITS
            JMP     end1101
            
opADD01     MOVE.B  #'D',(A2)+
            JSR     H_REG_BITS
            MOVE.B  #',',(A2)+
            JSR     GET_EA

end1101     RTS



**ASD,LSD
HEX_ONE_1110   JSR     GET_SIZE
            CMP.B   #%11,D6
            BEQ     OP_SHIFT_MEM
OP_SHIFT    MOVE.W  D7,D6
            LSR.B   #3,D6
            ANDI.B  #$03,D6 **masking bits
            CMP.B   #%00,D6 **is asd?
            BEQ     OP_SHIFT_ASD  **if
            CMP.B   #%01,D6 else is lsd?
            BEQ     OP_SHIFT_LSD  **if
            BRA     BAD_INSTANCE **else

    
OP_SHIFT_ASD       MOVE.B  #'A',(A2)+
            MOVE.B  #'S',(A2)+          
            JSR     D_2_BUFF
            MOVE.B  #'.',(A2)+
            JSR     SIZE_TO_BUFF
            MOVE.B  #' ',(A2)+
            MOVE.B  #' ',(A2)+
            MOVE.B  #' ',(A2)+
            MOVE.B  #' ',(A2)+
            JSR     GET_IR
            JMP     END_1110     

OP_SHIFT_LSD       MOVE.B  #'L',(A2)+
            MOVE.B  #'S',(A2)+          
            JSR     D_2_BUFF
            MOVE.B  #'.',(A2)+
            JSR     SIZE_TO_BUFF
            MOVE.B  #' ',(A2)+
            MOVE.B  #' ',(A2)+
            MOVE.B  #' ',(A2)+
            MOVE.B  #' ',(A2)+
            JSR     GET_IR
            JMP     END_1110     


OP_SHIFT_MEM    MOVE.W  D7,D6 **memory shift
            LSR.L   #EIGHT_BITSHIFT,D6
            LSR.L   #1,D6
            ANDI.W  #$0007,D6 **mask bits other than 9-11
            CMP.B   #%00,D6 **is as function?
            BEQ     OP_ASM **if
            CMP.B   #%01,D6 **else is ls?
            BEQ     OP_LSM  **if
            BRA     BAD_INSTANCE **else
            

            
OP_ASM       MOVE.B  #'A',(A2)+
            MOVE.B  #'S',(A2)+          
            JSR     D_2_BUFF
            MOVE.B  #'.',(A2)+
            MOVE.B  #'W',(A2)+
            MOVE.B  #' ',(A2)+
            MOVE.B  #' ',(A2)+
            MOVE.B  #' ',(A2)+
            MOVE.B  #' ',(A2)+
            JSR     GET_EA
            JMP     END_1110

OP_LSM       MOVE.B  #'L',(A2)+
            MOVE.B  #'S',(A2)+          
            JSR     D_2_BUFF
            MOVE.B  #'.',(A2)+
            MOVE.B  #'W',(A2)+
            MOVE.B  #' ',(A2)+
            MOVE.B  #' ',(A2)+
            MOVE.B  #' ',(A2)+
            MOVE.B  #' ',(A2)+
            JSR     GET_EA    
END_1110     RTS

D_2_BUFF    JSR     GET_DIR_BIT *get dir
            CMP.B   #%0,D6 **is the direction right?
            BEQ     DIR_R   **if
DIR_L        MOVE.B  #'L',(A2)+ **else
            JMP     DIR_END 
DIR_R        MOVE.B  #'R',(A2)+
DIR_END      RTS
  

GET_IR       MOVE.W  D7,D6
            LSR.L   #5,D6
            ANDI.W  #$0001,D6
            CMP.B   #%0,D6
            BEQ     IR_CNT
            MOVE.B  #'D',(A2)+
            JMP     IR_SZ
IR_CNT       MOVE.B  #'#',(A2)+
IR_SZ        JSR     H_REG_BITS
            MOVE.B  #',',(A2)+
            MOVE.B  #'D',(A2)+
            MOVE.W  D7,D6
            ANDI.W  #$0007,D6
            ADD.B   #$30,D6
            MOVE.B  D6,(A2)+
END_IR       RTS
            
HEX_ONE_1111   JSR     BAD_INSTANCE **bad code
            RTS

JMP_TBL_0100   
            JMP     HEX_FOUR_0000            
            JMP     HEX_FOUR_0001            
            JMP     HEX_FOUR_0010
            JMP     HEX_FOUR_0011
            JMP     HEX_FOUR_0100
            JMP     HEX_FOUR_0101
            JMP     HEX_FOUR_0110
            JMP     HEX_FOUR_0111
            JMP     HEX_FOUR_1000
            JMP     HEX_FOUR_1001
            JMP     HEX_FOUR_1010
            JMP     HEX_FOUR_1011
            JMP     HEX_FOUR_1100
            JMP     HEX_FOUR_1101
            JMP     HEX_FOUR_1110
            JMP     HEX_FOUR_1111
            
HEX_FOUR_0000   JSR     BAD_INSTANCE
            RTS
            
HEX_FOUR_0001   JSR     BAD_INSTANCE
            RTS
            
HEX_FOUR_0010   MOVE.B  #'C',(A2)+
            MOVE.B  #'L',(A2)+
            MOVE.B  #'R',(A2)+
            MOVE.B  #'.',(A2)+
            JSR     SIZE_TO_BUFF
            MOVE.B  #' ',(A2)+
            MOVE.B  #' ',(A2)+
            MOVE.B  #' ',(A2)+
            MOVE.B  #' ',(A2)+         
            JSR     GET_EA       
            RTS
            
HEX_FOUR_0011   JSR     BAD_INSTANCE
            RTS
                          
HEX_FOUR_0100   MOVE.B  #'N',(A2)+
            MOVE.B  #'E',(A2)+
            MOVE.B  #'G',(A2)+
            MOVE.B  #'.',(A2)+
            JSR     SIZE_TO_BUFF
            MOVE.B  #' ',(A2)+
            MOVE.B  #' ',(A2)+
            MOVE.B  #' ',(A2)+
            MOVE.B  #' ',(A2)+         
            JSR     GET_EA       
            RTS
            
HEX_FOUR_0101   JSR     BAD_INSTANCE
            RTS
            
HEX_FOUR_0110   MOVE.B  #'N',(A2)+
            MOVE.B  #'O',(A2)+
            MOVE.B  #'T',(A2)+
            MOVE.B  #'.',(A2)+
            JSR     SIZE_TO_BUFF
            MOVE.B  #' ',(A2)+
            MOVE.B  #' ',(A2)+
            MOVE.B  #' ',(A2)+
            MOVE.B  #' ',(A2)+         
            JSR     GET_EA       
            RTS
            
HEX_FOUR_0111   JSR     BAD_INSTANCE
            RTS
            
**MOVEM
HEX_FOUR_1000   MOVE.W  D7,D6
            LSR.L   #FOUR_BITSHIFT,D6
            ANDI.W  #$000F,D6
            BRA     OP_MOVEM


            RTS            

OP_MOVEM     JSR     BAD_INSTANCE
            RTS   

HEX_FOUR_1001   JSR     BAD_INSTANCE
            RTS   
HEX_FOUR_1010   JSR     BAD_INSTANCE
            RTS   
HEX_FOUR_1011   JSR     BAD_INSTANCE
            RTS
HEX_FOUR_1100   JSR     BAD_INSTANCE
            RTS
HEX_FOUR_1101   JSR     BAD_INSTANCE
            RTS
HEX_FOUR_1111   JSR     BAD_INSTANCE
            RTS   


**JSR,JMP,RTS
HEX_FOUR_1110   JSR     GET_SIZE
            CMP.B   #%10,D6
            BEQ     OP_JSR
            CMP.B   #%11,D6
            BEQ     OP_JMP
            CMP.W   #$4E75,D7 **is rts?
            BEQ     OP_RTS **if          
            BRA     BAD_INSTANCE **else
             

                                      
OP_JSR       MOVE.B  #'J',(A2)+
            MOVE.B  #'S',(A2)+
            MOVE.B  #'R',(A2)+
            MOVE.B  #' ',(A2)+
            MOVE.B  #$09,(A2)+ 
            JMP     GET_EA           

            RTS
                       
OP_JMP       MOVE.B  #'J',(A2)+
            MOVE.B  #'M',(A2)+
            MOVE.B  #'P',(A2)+
            MOVE.B  #' ',(A2)+
            MOVE.B  #$09,(A2)+ 
            JSR     GET_EA          
            RTS
                                 
OP_RTS       MOVE.B  #'R',(A2)+
            MOVE.B  #'T',(A2)+
            MOVE.B  #'S',(A2)+             
            RTS
            
HEX_TWO_1111   RTS    

**helper functions
GET_SIZE     MOVE.W  D7,D6 **thuis gets the size
            LSR.W   #6,D6 
            ANDI.W  #$0003,D6  
            RTS **stores and returns

SIZE_TO_BUFF JSR     GET_SIZE
            CMP.B   #%00,D6
            BEQ     main_BYTE
            CMP.B   #%01,D6
            BEQ     main_WORD
            CMP.B   #%10,D6
            BNE     BAD_INSTANCE
      
            MOVE.B  #'L',(A2)+
            JMP     main_END
            
main_BYTE       MOVE.B  #'B',(A2)+
            JMP     main_END
            
main_WORD       MOVE.B  #'W',(A2)+

main_END     RTS

H_REG_BITS MOVE.W  D7,D6
            LSR.L   #EIGHT_BITSHIFT,D6
            LSR.L   #1,D6
            ANDI.B  #$7,D6
            ADD.B   #$30,D6
            MOVE.B  D6,(A2)+
            RTS

GET_DIR_BIT   MOVE.W  D7,D6
            LSR.L   #EIGHT_BITSHIFT,D6
            ANDI.B  #01,D6
            RTS  
            
GET_ADDR     CMP.B   #%00,D6
            BEQ     B_TO_BUFF
            CMP.B   #%01,D6
            BEQ     W_2_BUFF
            CMP.B   #%10,D6
            BEQ     L_TO_BUFF
            RTS

GET_LONG     JSR     CMD_S_1 **loading shift value
            MOVE.B  #TWELVE_BITSHIFT,D4
            JSR     CMD_S_2
            MOVE.B  #EIGHT_BITSHIFT,D4
            JSR     CMD_S_2
            MOVE.B  #FOUR_BITSHIFT,D4
            JSR     CMD_S_2
            MOVE.B  #0,D4
            JSR     CMD_S_4
            MOVE.B  #TWELVE_BITSHIFT,D4
            JSR     CMD_S_4
            MOVE.B  #EIGHT_BITSHIFT,D4
            JSR     CMD_S_4
            MOVE.B  #FOUR_BITSHIFT,D4
            JSR     CMD_S_4
            MOVE.B  #0,D4
            LSR.L   D4,D6
            ANDI.L  #$0000000F,D6
            JSR     HEX_TO_ASCII

CMD_S_1      MOVEQ   #$0,D6
            MOVE.L  A0,D6
            SWAP    D6
            RTS

CMD_S_2      LSR.L   D4,D6
            ANDI.L  #$0000000F,D6
            JSR     HEX_TO_ASCII
            JSR     CMD_S_1
            RTS

CMD_S_3      MOVEQ   #$0,D6
            MOVE.L  A0,D6
            RTS
            
CMD_S_4      LSR.L   D4,D6
            ANDI.L  #$0000000F,D6
            JSR     HEX_TO_ASCII
            JSR     CMD_S_3
            RTS
            
BAD_INSTANCE     MOVE.B  #FLAG_BAD,D5 **trigering bad flag
            MOVEA.L A3,A2
            MOVE.B  #'D',(A2)+ 
            MOVE.B  #'A',(A2)+
            MOVE.B  #'T',(A2)+
            MOVE.B  #'A',(A2)+
            MOVE.B  #$09,(A2)+
            MOVE.B  #'$',(A2)+ *i am very tired at this point
            JSR     GET_BAD_W
            RTS          

GET_BAD_W  MOVEQ   #$0,D6
            MOVE.W  D7,D6
            MOVE.B  #TWELVE_BITSHIFT,D4
            LSR.L   D4,D6
            ANDI.W  #$000F,D6
            JSR     HEX_TO_ASCII
            MOVE.W  D7,D6
            MOVE.B  #EIGHT_BITSHIFT,D4
            LSR.L   D4,D6
            ANDI.W  #$000F,D6
            JSR     HEX_TO_ASCII
            MOVE.W  D7,D6
            MOVE.B  #FOUR_BITSHIFT,D4
            LSR.L   D4,D6
            ANDI.W  #$000F,D6
            JSR     HEX_TO_ASCII
            MOVE.W  D7,D6
            ANDI.W  #$000F,D6
            JSR     HEX_TO_ASCII **will this ever end?
            RTS
            
CLEAR_REGISTERS     CLR.L   D0
            CLR.L   D1
            CLR.L   D2
            CLR.L   D3
            CLR.L   D4
            CLR.L   D6
            CLR.L   D7
            RTS


**convert hex to ascii
HEX_TO_ASCII   CMP.B   #$A,D6
            BGE     letter
            ADDI.B  #$30,D6 
            BRA     WRITE_TO_BUFFER **my hands hurt so much from typing
letter      ADDI.B  #$37,D6
WRITE_TO_BUFFER  MOVE.B  D6,(A2)+
            RTS
**get the effective address
GET_EA       
            LEA     EA_M_TBL,A5 **get effective address
            CLR.L   D2
            CLR.L   D3
            CLR.L   D4           
            CLR.L   D6
            MOVE.W  D7,D6
            ANDI.W  #$003F,D6
            MOVE.B      #3,D1       
            LSR.W       D1,D6       

            MULU      #6,D6
            JSR         00(A5,D6)

            RTS 
        
            JMP         END 
EA_M_TBL 
            JMP     EA_000
            JMP     EA_001
            JMP     EA_010
            JMP     EA_011
            JMP     EA_100
            JMP     EA_101
            JMP     EA_110
            JMP     EA_111
EA_000
            MOVE.W      D7,D6 **store word
            ANDI.W      #$7,D6 **mask bits
            MOVE.B      #$44,(A2)+ 
            ADD.B       #$30,D6 **reg to hex
            MOVE.B      D6,(A2)+            
            
        RTS 
EA_001
            MOVE.W      D7,D6  **store word
            ANDI.W      #$7,D6 **mask bits
            MOVE.B      #$41,(A2)+ 
            ADD.B       #$30,D6 
            MOVE.B      D6,(A2)+
              
        RTS **i have to write RTS on mail that comes all the time, the last tennents in my apartment didn't change their address
EA_010
            MOVE.W      D7,D6 **same same, store word
            ANDI.W      #$7,D6 
            MOVE.B      #$28,(A2)+ **same same but different    
            MOVE.B      #$41,(A2)+
            ADD.B       #$30,D6
            MOVE.B      D6,(A2)+
            MOVE.B      #$29,(A2)+
             
        RTS **recipient no longer at address, return to sender
EA_011
            
            MOVE.W      D7,D6 **store words again
            ANDI.W      #$7,D6 
            MOVE.B      #$28,(A2)+ **add open parenthesis        
            MOVE.B      #$41,(A2)+ **add A
            ADD.B       #$30,D6 **convert reg to hex
            MOVE.B      D6,(A2)+
            MOVE.B      #$29,(A2)+ **add close parenthesis
            MOVE.B      #$2B,(A2)+ **add plus to end
                 
        RTS
EA_100
           
            MOVE.W      D7,D6 **stoer word
            ANDI.W      #$7,D6  **mask bits
            MOVE.B      #$2D,(A2)+ **add minus
            MOVE.B      #$28,(A2)+  **add open renthesis          
            MOVE.B      #$41,(A2)+   **add A
            ADD.B       #$30,D6 **reg to hex
            MOVE.B      D6,(A2)+  
            MOVE.B      #$29,(A2)+ **add close parenthesis
            
        RTS

EA_101
             JMP    BAD_INSTANCE **bad bad nasty bad flag

EA_110
            JMP       BAD_INSTANCE  **bad bad again again



EA_111
            JSR      REG_BITS  
            CMPI.B   #$0,D6  **is this a word???!?!?!
            BEQ      W_2_BUFF **YASSSSSSS
            CMPI.B   #$1,D6 **NAH
            BEQ      L_TO_BUFF **load it
            CMPI.B   #$2,D6

            CMPI.B   #$2,D6
            BEQ      PC_W_DISP             
            CMPI.B   #$4,D6
            BEQ      I_TO_BUFF          * DON"T HAVE THIS CASE YET
           
            RTS

REG_BITS     MOVE.W  D7,D6
            ANDI.W  #$07,D6
            RTS

I_TO_BUFF
            MOVE.B      #'#',(A2)+
            JSR         MOVE_SIZE
            CMPI.B      #$1,D6
            BEQ         B_TO_BUFF
            CMPI.B      #$3,D6
            BEQ         W_2_BUFF        
            CMPI.B      #$2,D6
            BEQ         L_TO_BUFF
            RTS

PC_W_DISP
            JSR         W_2_BUFF
            MOVE.B      #$28,(A2)+ **open parenthesis           
            MOVE.B      #$50,(A2)+ **p
            MOVE.B      #$43,(A2)+ **c
            MOVE.B      #$29,(A2)+ **close parenthesis                 
            RTS

B_TO_BUFF   
            MOVE.B  #'$',(A2)+
            CLR.L   D4 **freshen the data, old spice fresh
            MOVE.W  (A0),D2
            CLR.L   D4 **irish springs soap fresh
            MOVE.B  #2,D4 **counter

BIT_TO_BIT_LOOP                 
            CMP.B   #$00,D4
            BEQ     RTN_EA_0
            ROL.B   #4,D2
            MOVE.W  D2,D6
            ANDI.W  #$000F,D6
            JSR     HEX_TO_ASCII           
            SUBQ.B  #$1,D4
            JMP     BIT_TO_BIT_LOOP
            
RTN_EA_0      MOVE.W  D7,D6           
            ADDQ.W  #2,A0  
            RTS
W_2_BUFF 
            MOVE.B  #'$',(A2)+  
            CLR.L   D4
            *MOVE.B  #$24,(A2)+
            MOVE.W  (A0),D2
            CLR.L   D4
            MOVE.B  #4,D4

W_TO_BIT_LOOP                 
            CMP.B   #$00,D4 **word into byte
            BEQ     RTN_EA_1
            ROL.W   #4,D2
            MOVE.W  D2,D6
            ANDI.W  #$000F,D6
            JSR     HEX_TO_ASCII
            SUBQ.B  #$1,D4
            JMP     W_TO_BIT_LOOP
            
RTN_EA_1    MOVE.W  D7,D6 **returns a long effective address  
            ADDQ.W  #2,A0
            RTS

L_TO_BUFF
            MOVE.B  #'$',(A2)+ **loads a long into the buffer
            CLR.L   D4
            MOVE.L  (A0),D2
            CLR.L   D4
            MOVE.B  #8,D4

L_TO_B_LOOP                 
            CMP.B   #$00,D4     * compare counter with 0
            BEQ     RTN_EA_2      * if zero, return
            ROL.L   #4,D2       * roll the bits in D2 to the left
            MOVE.W  D2,D6       * move rolled bits into temp storage
            ANDI.W  #$000F,D6   * and the bits to isolate ascii char   
            JSR     HEX_TO_ASCII   * load ascii char into buffer            
            SUBQ.B  #$1,D4      * subtract from counter
            JMP     L_TO_B_LOOP     * keep looping until counter hits zero
            
RTN_EA_2      MOVE.W  D7,D6       * re-load current word for temp storage
            ADDQ.W  #4,A0       * advancing memory pointer by long
            RTS                 * return from subroutine

**opening menu page    
            ORG     data
introduction_message       
             DC.B    'Easy 68k Disassembler by Brian Clark, Kemba Konteh and Jacob McHugh for CSS 422 Spring 2020',CR,LF,0

introduction_message_len   DC.W    introduction_message_len-introduction_message
        
MESSAGE_START_ADDR     DC.B    'Starting Address $',0
str_len1    DC.W    str_len1-MESSAGE_START_ADDR

MESSAGE_END_ADDR     DC.B    'Ending Address $',0
str_len2    DC.W    str_len2-MESSAGE_END_ADDR

MESSAGE_END_ERROR1     DC.B    'Starting or ending address error',0
str_len3    DC.W    str_len3-MESSAGE_END_ERROR1

MESSAGE_END_ERROR2   DC.B    'Invalid starting address',0
err_len1    DC.W    MESSAGE_END_ERROR2-err_len1

MESSAGE_END_ERROR3     DC.B    'Invalid Ending address',0
err_len2    DC.W    MESSAGE_END_ERROR3-err_len2

MESSAGE_CONTINUE   DC.B    'Press enter to continue',0
str_en_len  DC.W    MESSAGE_CONTINUE-str_en_len

MESSAGE_MORE    DC.B    'Run again? Y=1, N=0: ',0
strMore_len DC.W    strMore_len-MESSAGE_MORE       

MESSAGE_TEST    DC.B    'testing testing testing',0
str_te_len  DC.W    MESSAGE_TEST-str_te_len

exit        DC.B    'Thats all folks',0
exit_len    DC.W    exit_len-exit           

goodbuff    DC.B   1
                                 




      
END         STOP    #$2700
            END     start














*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~

*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
