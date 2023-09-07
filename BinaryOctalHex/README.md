<h1>Binary, Octal, and Hex display for PAL-1</h1>
<pre>
  
; BINARY OCTAL HEX COUNTER FOR PAL-1
; BUTTONS 2 TO F WILL SET DELAY TIME
; (F=MOST DELAY, 2 IS LEAST DELAY)
; BUTTON 0 RESETS, BUTTON 1 ENTERS
; SINGLE STEP MODE

; BINARY DISPLAY REQUIRES 2ND RIOT WITH 
; I/O MODULE

; ASSEMBLED USING A65 ASSEMBLER
; https://www.retrotechnology.com/restore/a65c.html
; TO COMPILE IN LINUX (AS PER MARK ABENE)
; ln -s a65.h A65.H ; (OR VICE VERSA)
; gcc -I. -o a65 a65.c a65util.c a65eval.c
; THEN CREATE THE FOLLOWING FILE: ASM65 WITH CONTENTS
; (BE SURE dos2unix IS INSTALLED)
; -----------------------------------------------------
; #!/bin/bash
; ./a65 $1.asm -l $1.lst -o $1.hex 
; srec_cat $1.hex -intel -o $1.mos -MOS_Technologies
; unix2dos $1.mos
; -----------------------------------------------------
; THEN chmod +x ASM65 to make it executable
; THIS SCRIPT PUTS THE FILE INTO PAPER TAPE FORMAT
; IN THE KIM MONITOR, USE THE "L" COMMAND TO LOAD PAPER TAPE
; JUST PAST THE OUTPUT OF YOUR SCRIPT (*.mos) INTO TERMINAL.
; DON'T FORGET TO SET UP YOUR DELAYS.  I USED A 10MS CHAR DELAY
; AND A 250MS LINE DELAY.
                        
; -- Ricky Bryce
</pre>
</pre>
