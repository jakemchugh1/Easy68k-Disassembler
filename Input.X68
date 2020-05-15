*-----------------------------------------------------------
* Title      :
* Written by :
* Date       :
* Description:
*-----------------------------------------------------------
    ORG     $1000
INPUT
            LEA     INPUT_MSG,A1    * request input for start
            MOVE.B  #14,D0
            TRAP    #15

            BSR     GATHER          * gather input for start

            LEA     OUTPUT_MSG,A1   * request input for end
            MOVE.B  #14,D0
            TRAP    #15

            BSR     GATHER          * gather input for end

            SIMHALT

GATHER
            MOVEA.L #$400,A1        * store string at location $400
            MOVE.B  #2,D0           * get input
            TRAP    #15

            JMP     TO_HEX

TO_HEX
            MOVE.B  (A1)+,D2        * store ascii char in D2
            CMP     #$30,D2
            BLT     ERROR           * out of bounds, char below '0'
            
            SUB     #$30,D2         * brings ascii to number range
            CMP     #$9,D2          * compares if in number range
            BLE     DONE            * char converted to hex
            
            SUB     #$7,D2          * brings ascii char to alpha range
            CMP     #$F,D2          * compared is in alpha range
            BGT     ERROR           * out of bounds, char above 'F'
            
            JMP     DONE
            
            RTS
            
ERROR
            *
            
DONE
            *

* Put variables and constants here
INPUT_MSG   DC.B    'Enter the starting address: ',0
OUTPUT_MSG  DC.B    'Enter the ending address: ',0
ERROR_MSG   DC.B    'Not a valid address',0

    END     INPUT

*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
