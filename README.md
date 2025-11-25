# KIM-1_Clones
In this repository, I will store programs that I've created for the KIMUNO, and the PAL-1 Clones of the KIM-1 6502 computer.  In general, the programs for each type of clone are interchangeable with some minor modifications. For example: the PAL-1's GETKEY value is 15 when no key pressed.  I believe this is FF on the KimUNO.  Additionally, the KimUNO's keys are one-shot, whereas the PAL-1 holds the keypress value.<p>
The KIMUNO is a clone that is based on the Arduino Pro Mini microcontroller.  You can find more information on this clone at <a href="https://obsolescence.wixsite.com/obsolescence/kim-uno-summary-c1uuh">this link.</a><p>
<p>The PAL-1 is a closer clone of the KIM-1 computer using an actual 6502 processor.  I purchased mine from Tindie. </p>
<p>You will see some .mos files in this repository.  Those files are in tape format, and you can load them directly into the PAL-1.  From the KIM Monitor, just navigate to address 0200 (0200 then space).  From there, you can type a capitol "L" (load) to load the file.  Paste the contents of the .mos file into your terminal with a 10ms character delay, and 250ms line delay. 
 After that, simply navigate back to address 0200, and type a capitol "G" (go).  </p>
 <p>-- Ricky Bryce</p>
