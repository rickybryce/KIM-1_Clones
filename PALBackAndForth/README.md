<h1>PAL-1 Back and Forth Program</h1>
<p>This program creates a "cylon" effect on the LED's.  You must have a RIOT expansion, and an I/O Board for this to work.</p>
<p>The keypad buttons will select delay.  Current delay time is on rightmost display.  Current delay counts are on middle display.</p>
<pre>

; BACK AND FORTH FOR PAL-1
; CYLON EFFECT
; (F=MOST DELAY, 0=LEAST DELAY)

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
