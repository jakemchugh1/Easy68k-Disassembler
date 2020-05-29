*-----------------------------------------------------------
* Title      :
* Written by :
* Date       :
* Description:
*-----------------------------------------------------------


START    ORG     $1000

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

INPUT
            CLR.L   D2              * ensure working space is clear
            CLR.L   D3

            LEA     INPUT_MSG,A1    * request input for start
            MOVE.B  #14,D0
            TRAP    #15

            BSR     GATHER          * gather input for start
            
            MOVEA.L D3,A5           * moves start address to A5
            CLR.L   D3              * clear D3 for end address

            LEA     OUTPUT_MSG,A1   * request input for end
            MOVE.B  #14,D0
            TRAP    #15

            BSR     GATHER          * gather input for end
            
            MOVEA.L D3,A6           * moves end address to A6
            
            CLR.L   D2              * clear working areas
            CLR.L   D3

            SIMHALT

GATHER
            MOVEA.L #$400,A1        * store string at location $400
            MOVE.B  #2,D0           * get input
            TRAP    #15

            CMP     #$8,D1          * checks for maximum 8 char input
            BGT     ERROR

            JMP     TO_HEX          * begin conversion to hex

TO_HEX
            MOVE.B  (A1)+,D2        * store ascii char in D2
            CMP     #$30,D2
            BLT     ERROR           * out of bounds, char below '0'
            
            SUB     #$30,D2         * brings ascii to number range
            CMP     #$9,D2          * compares if in number range
            BLE     SHIFT           * char converted to hex
            
            SUB     #$7,D2          * brings ascii char to alpha range
            CMP     #$A,D2          * compares if in alpha range
            BLT     ERROR           * out of bounds, char below 'A'
            CMP     #$F,D2          * compares if in alpha range
            BGT     ERROR           * out of bounds, char above 'F'
            
            JMP     SHIFT           

SHIFT
            LSL.L   #4,D3           * shifts bits left to make room
            ADD.L   D2,D3           * appends new char
            
            SUB.W   #$1,D1          * decrement size of input string
            CMP     #$0,D1          * check if size = 0
            BEQ     DONE            * no more char to convert
            
            JMP     TO_HEX          * convert more char
            
ERROR
            CLR.L   (A7)+           * reset stack pointer

            LEA     ERROR_MSG,A1    * print error message
            MOVE.B  #14,D0
            TRAP    #15

            JMP     INPUT           * jump back to beginning
            
MAIN            
            move.w  (A5)+,D3        * move hex data into D3
            
            cmp.b   $0001,D3        * compares byte to byte code 0001
            BEQ     BITS0001        * branches if equal
            
            cmp.b   $0010,D3        * compares byte to byte code
            BEQ     BITS0010        * branches if equal
            
            cmp.b   $0011,D3        * compares byte to byte code
            BEQ     BITS0011        * branches if equal
            
            cmp.b   $0100,D3        * compares byte to byte code
            BEQ     BITS0100        * branches if equal
            
            cmp.b   $0110,D3        * compares byte to byte code
            BEQ     BITS0110        * branches if equal
            
            cmp.b   $1000,D3        * compares byte to byte code
            BEQ     BITS1000        * branches if equal
            
            cmp.b   $1001,D3        * compares byte to byte code
            BEQ     BITS1001        * branches if equal
            
            cmp.b   $1011,D3        * compares byte to byte code
            BEQ     BITS1011        * branches if equal
            
            cmp.b   $1100,D3        * compares byte to byte code
            BEQ     BITS1100        * branches if equal
            
            cmp.b   $1101,D3        * compares byte to byte code
            BEQ     BITS1101        * branches if equal
            
            cmp.b   $1110,D3        * compares byte to byte code
            BEQ     BITS1110        * branches if equal


            
BITS0001 **move.b
            **printing 'move."
            LEA     P_MOVE,A1
            MOVE.B  #14,D0
            Trap    #15
            
            **printing 'B"
            LEA     P_B,A1
            MOVE.B  #14,D0
            Trap    #15

BITS0010 **move.l,movea.l
            CLR.L   D3 **clear d3
            
            MOVE.W (A5), D3 ** move (but do not advance) the data in a5 to d3
            ANDI.L #$01C0, D3 **hide undesired bits
            LSR.W   #6,D1   **shift the bits into position
            CMPI.B  #%0001,D1 **check to see if this is movea.l
            BEQ     MOVEA_L **if equal goto MOVEA_L
            BRA     MOVE_L  **else goto MOVEA_L
MOVEA_L
        **to do      
            
MOVE_L            
        **to do      	
            
BITS0011 **move.w,movea.w
            CLR.L   D3 **clear d3

            MOVE.W (A5), D3 ** move (but do not advance) the data in a5 to d3
            ANDI.L #$01C0, D3 **hide undesired bits
            LSR.W   #6,D1   **shift the bits into position
            CMPI.B  #%0001,D1 **check to see if this is movea.l
            BEQ     MOVEA_L **if equal goto MOVEA_W
            BRA     MOVE_L  **else goto MOVEA_W
            
MOVEA_W
      **to do      
            
MOVE_W
        **to do   

BITS0100 **jsr,lea,movem,rts
        **this one is going to suck to write
            CLR.L   D3 **clear d3
            CLR.L   D4 **clear d4
            MOVE.W (A5),D3 ** move (but do not advance) the data in a5 to d3
            ANDI.L #$0F00, D3 **hide undesired bits
            LSR.W   #8,D1   **shift the bits into position
            CMPI.B  #%1110,D1 **check to see if this is movea.l
            BEQ     MOVEA_L **if equal goto IS1110

NOT1110
            **todo            

IS1110
            **toto


BITS0110 **Bcc

BITS1000 **OR
            LEA     P_OR,A1
            MOVE.B  #14,D0
            TRAP    #15

BITS1001 **sub
            LEA     P_SUB,A1
            MOVE.B  #14,D0
            TRAP    #15

BITS1011 **cmp
            LEA     P_CMP,A1
            MOVE.B  #14,D0
            TRAP    #15

BITS1100 **and
            LEA     P_AND,A1
            MOVE.B  #14,D0
            TRAP    #15

BITS1101 ** add
            LEA     P_ADD,A1
            MOVE.B  #14,D0
            TRAP    #15

BITS1110 ** ASd,LSd

DONE
            RTS



* Put variables and constants here
CR          EQU     $0D
LF          EQU     $0A
bits12_15   EQU     $F000

INPUT_MSG   DC.B    'Enter the starting address: ',0
OUTPUT_MSG  DC.B    'Enter the ending address: ',0
ERROR_MSG   DC.B    'Not a valid address',CR,LF,'Try again',CR,LF,CR,LF,0

P_SPACE     DC.B    ' ',0

P_MOVE      DC.B    'MOVE.',0
P_MOVEA     DC.B    'MOVEA.',0
P_MOVEM     DC.B    'MOVEM.',0
P_ADD       DC.B    'ADD.',0
P_SUB       DC.B    'SUB.',0
P_LEA       DC.B    'LEA',0
P_AND       DC.B    'AND.',0
P_OR        DC.B    'OR.',0
P_CMP       DC.B    'CMP.',0
P_BCC       DC.B    'BCC.',0
P_BGT       DC.B    'BGT.',0
P_BLE       DC.B    'BLE.',0
P_JSR       DC.B    'JSR',0
P_RTS       DC.B    'RTS',0

P_AS        DC.B    'AS',0
P_LS        DC.B    'LS',0
P_LEFT      DC.B    'L.',0          * left
P_R         DC.B    'R.',0          * right

P_B         DC.B    'B',0           * byte
P_W         DC.B    'W',0           * word
P_L         DC.B    'L',0           * long

    END     INPUT


*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
