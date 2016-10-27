// GameCube "Giftpia" Japanese To English Translation by krom (Peter Lemon):

endian msb // GameCube PPC requires Big-Endian Encoding (Most Significant Bit)
output "Giftpia.iso", create
origin $000000; insert "Giftpia [J].iso" // Include Japanese Giftpia ISO

macro Text(OFFSET, TEXT) {
  map 0, 0, 256 // Map Default ASCII Chars

  origin {OFFSET}
  db {TEXT} // ASCII Text To Print
}

macro TextShiftJIS(OFFSET, TEXT) {
  // Map Shift-JIS Words
  map ' ',  $8140
  map $2C,  $8143 // Comma ","
  map '.',  $8144
  map ':',  $8146
  map '?',  $8148
  map '!',  $8149
  map '~',  $8160
  map '\s', $8166 // Single Quote "'"
  map '\d', $8168 // Double Quote '"'
  map '+',  $817B
  map '&',  $8195
  map '0',  $824F, 10 // Map Numbers
  map 'A',  $8260, 26 // Map English "Upper Case" Characters
  map 'a',  $8281, 26 // Map English "Lower Case" Characters

  origin {OFFSET}
  dw {TEXT} // Shift-JIS Text To Print
}

// Start Game
Text($570060AC, "Empty") ; fill 7

Text($570062E0, "Overwrite the file?                    ") ; fill 1

Text($57006308, "You save       ") ; fill 1
Text($57006318, "memory card do not             ") ; fill 1
Text($57006338, "touch the power        ") ; fill 1

Text($57006364, "Now saving     ") ; fill 1

Text($57006598, "Beginning") ; fill 3

Text($570065D0, "Create start data              ") ; fill 1
Text($570065F0, "Please select file         ") ; fill 1

// Start Screen
Text($57006A6C, " Start") ; fill 6
Text($57006A78, "Continue") ; fill 4
Text($57006A84, "Options") ; fill 5

// Continue
Text($57006570, "Please select a file                   ") ; fill 1

// Options
Text($57006A9C, "Sound") ; fill 7
Text($57006AA8, " Stereo") ; fill 5
Text($57006AB4, " Mono") ; fill 7

Text($5700A154, "Child") ; fill 7

Text($5700ED10, "%sHour%sMin") ; fill 1

Text($57053114, "%sMane") ; fill 2

Text($57053160, "Yes") ; fill 5
Text($57053168, " No") ; fill 5

Text($57053170, "Vibrate") ; fill 1
Text($57053178, "Return") ; fill 2

// Banner Text
Text($57057EC0, "GIFTPIA") ; fill 25 // Title Text (32 Bytes)
Text($57057F00, "GIFTPIA") ; fill 57 // Long Title Text (64 Bytes)
Text($57057F80, "Pokkle of Nanashi Island, the day he will become an adult.\n") // Description Text (128 Bytes)
             db "Kyappi will be blindfolded tonight." ; fill 34
