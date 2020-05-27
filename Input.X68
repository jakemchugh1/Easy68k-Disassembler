*-----------------------------------------------------------
* Title      :
* Written by :
* Date       :
* Description:
*-----------------------------------------------------------


    ORG     $1000
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

BITS0010 **move.w,movea.w

BITS0011 **move.l,movea.l

BITS0100 **jsr,lea,movem,rts

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
