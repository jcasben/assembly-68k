*-----------------------------------------------------------
* Title      :
* Written by :
* Date       :
* Description:
*-----------------------------------------------------------
    ORG    $1000
    
A       DC.W    10
B       DC.W    -14
C       DS.W    1

START:                  
        MOVE.W A,D0     ; move A to D0
        ADD.W B,D0      ; add D0 and B and save it in D0
        BMI ET0         ; look for flag N. If N=1, branches to ET0
        MOVE.W D0,C     ; move D0
        
        SIMHALT         ; halt simulator
        
ET0:
        NEG.W D0        ; converts D0 to the opposite sign
        MOVE.W D0,C     ; move D0 to C

    SIMHALT             ; halt simulator

* Put variables and constants here

    END    START        ; last line of source

*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
