; Timer for Kim Uno (Scan Based Timer)
; 2 restarts at 0
; 4 will exit to KIM
; 1 starts the timer
; 3 pauses the timer
; assembled using 6502 Virtual online assembler
; https://www.masswerk.at/6502/assembler.html
; -- Ricky Bryce



.ORG $0200

RESTART:
    LDA #00  ; Load Zeros to Registers
    LDX #00
    LDY #00
    STA $F9  ; Store Zeros to Display
    STA $FA
    STA $FB 

WAIT:
    JSR $1F1F  ; SCANDS (Update Display)
    JSR $1F6A  ; GETKEY (Check keys on Keypad)
    CMP #$02   ; If 2, then Restart at Zero
    BEQ RESTART
    CMP #$04   ; If 4, then Exit to KIM
    BNE CONT4  ; I had to BNE, since $1C64 is out of branch reach.
    JMP $1C64  ; Exit 

CONT4:
    CMP #$01   ; If 1, then go to BEGIN to start the timer
    BNE WAIT
    JMP BEGIN 

BEGIN:
    JSR $1F1F  ; SCANDS

    LDX #$09   ; Calibration for timer
DELAY:
    NOP
    NOP
    NOP
    JSR $1F6A  ; GETKEY
    CMP #$03   ; If 3, then enter WAIT mode
    BEQ WAIT 

AFTERKEYCHECK:
    DEX
    BNE DELAY  ; Continue loop until it's time to increment hundredths by two.  ie. wait .02 seconds
    NOP
    CLC        ; Clear Carry Flag
    CLV        ; Clear Overflow Flag
    SED        ; Set Decimal Flag
    LDA #2     ; Load 2 into the accumulator
    ADC $F9    ; Add right most digits to accumulator (increment by 2)
    STA $F9    ; Store the incremented value back to the display
    CLD        ; Clear Decimal Flag 

    BCS INCSEC ; If Carry is set, then it's time to increment seconds.
    JMP BEGIN  ; Go back to BEGIN 

INCSEC:
    CLC        ; Clear Carry Flag
    SED        ; Set Decimal Flag
    LDA #01    ; Load 1 to Accumulator
    ADC $FA    ; Add middle 2 digits to accumulator (increments by 1)
    STA $FA    ; Store the value back to the middle 2 digits
    CLD        ; Clear Decimal Flag

    BCS INCHUN ; If Carry is set, it's time to increment the left digits
    JMP BEGIN  ; Go back to BEGIN 

INCHUN:
    CLC        ; Clear Carry Flag
    SED        ; Set Decimal Flag
    LDA #01    ; Load 1 to Accumulator
    ADC $FB    ; Add left most digits to accumulator (increment by 1)
    STA $FB    ; Store the incremented value back to the display
    CLD        ; Clear Decimal Flag
    CLC        ; Clear the Carry Flag

    JMP BEGIN  ; Back to BEGIN 
