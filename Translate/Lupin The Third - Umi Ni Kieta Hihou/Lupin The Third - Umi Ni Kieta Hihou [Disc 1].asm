// GameCube "Lupin The Third - Umi Ni Kieta Hihou" Japanese To English Translation by krom (Peter Lemon):

endian msb // Used To Encode SHIFT-JIS Words
output "Lupin The Third - Lost Treasure Under The Sea [Disc 1].iso", create
origin $000000; insert "Lupin The Third - Umi Ni Kieta Hihou [Disc 1][J].iso" // Include Japanese Lupin The Third - Umi Ni Kieta Hihou GameCube ISO Disc 1

macro TextSave(OFFSET, TEXT) {
  origin {OFFSET}
  db {TEXT} // ASCII Text To Print
}

macro TextMain(OFFSET, SPACE, SQUARE, TEXT) {
  origin {OFFSET}
  variable labeloffset(+)
  db $33 // Text Start Byte
  db labeloffset - {OFFSET} + 2 // Text Length

  if {SPACE} != 0 { // IF (SPACE != 0)
    fill {SPACE}, $20 // Fill With Leading Space " " Bytes
  }

  if {SQUARE} != 0 { // IF (SQUARE != 0)
    dw $816D // Place SHIFT-JIS "[" Character (ASCII "[" Is Used As Special Character In Text Engine)
  }

  db {TEXT} // ASCII Text To Print
  +
  db "[n]", 0 // Text EOF
}

// Banner Image
origin $31D3AE00
insert "GFX/opening1.bnr" // Insert Banner Image File "opening.bnr" (6176 Bytes)

// Banner Text
TextSave($31D3C620, "Lupin The Third - Disc 1") ; db 0,0,0,0,0,0,0,0 // Title Text (32 Bytes)
TextSave($31D3C660, "Lupin The Third - Lost Treasure Under The Sea - Disc 1") ; db 0,0,0,0,0,0,0,0,0,0 // Long Title Text (64 Bytes)

// Save Select
TextSave($000D97E4, "In this state progress can't be saved,") ; db "[n]"
TextSave($000D980D, "ready to start game?") ; db 0

TextSave($000D985C, "All files on MEMORY CARD will be DELETED, ") ; db "[n]"
TextSave($000D9889, "sure you want to initialize?") ; db 0

TextSave($000D9C9C, "Detected MEMORY CARD in SLOT A") ; db "[n]"
TextSave($000D9CBD, "NO SAVE, the DATA needs to be initialized.") ; db "[n]"

TextSave($000D9E18, "Initialized SAVE DATA.") ; db "[n]"

TextSave($000D9F91, "Initialize")

// Introduction
TextMain($43A45538, 0, 1, "Jigen]")
TextMain($43A4554E, 0, 0, "I was early ")

TextMain($43A455B2, 0, 1, "Jigen]")
TextMain($43A455C8, 0, 0, "Did it go well? ")

TextMain($43A45600, 12, 1, "Lupin]  ")
TextMain($43A45624, 16, 0, "Perfect!    ")

TextMain($43A45668, 12, 1, "Lupin]  ")
TextMain($43A4568C, 16, 0, "Look!!  ")

TextMain($43A456C8, 4, 1, "Jigen]        ")
TextMain($43A456EA, 8, 0, "Huh...        ")
TextMain($43A45706, 8, 0, "What on Earth is this?")

TextMain($43A4574C, 0, 1, "Jigen]")
TextMain($43A45762, 2, 0, "Hey, Lupin!   ")
TextMain($43A45778, 2, 0, "All that for this?")

TextMain($43A457B4, 8, 1, "Lupin]    ")
TextMain($43A457D6, 8, 0, "Yes, just for that! ")

TextMain($43A4581A, 0, 1, "Jigen]")
TextMain($43A45830, 0, 0, "O.K then")
TextMain($43A4583E, 0, 0, "as we're in Greece let's have a drink!")

TextMain($43A4588C, 8, 1, "Lupin]    ")
TextMain($43A458AE, 8, 0, "However, that person")
TextMain($43A458D0, 8, 0, "depending on the \dtreasure\d!")

TextMain($43A4591C, 0, 1, "Jigen]")
TextMain($43A45932, 2, 0, "This is?")

TextMain($43A45964, 10, 1, "Jigen]")
TextMain($43A45984, 10, 0, "Also, this is very fine   ")
TextMain($43A459AE, 10, 0, "do you not see...   ")

TextMain($43A459F4, 4, 1, "Jigen]")
TextMain($43A45A0E, 4, 0, "What is it?     ")

TextMain($43A45A4A, 12, 1, "Lupin]        ")
TextMain($43A45A74, 12, 0, "It might be a key...")

TextMain($43A45ABC, 4, 1, "Jigen]")
TextMain($43A45AD6, 4, 0, "A key?  ")

TextMain($43A45B2A, 2, 1, "Lupin]  ")
TextMain($43A45B44, 2, 0, "Yep, what is that!? ")

TextMain($43A45BA2, 18, 1, "Jigen]")
TextMain($43A45BCA, 16, 0, "What's happening!?  ")

TextMain($43A45C56, 14, 1, "Jigen]")
TextMain($43A45C7A, 18, 0, "Aaargh! ")

TextMain($43A45CBC, 0, 1, "Lupin]  ")
TextMain($43A45CD4, 0, 0, "Jigen, you got a new friend!")

TextMain($43A45D18, 18, 1, "Jigen]")
TextMain($43A45D40, 21, 0, "I do not know")
TextMain($43A45D68, 21, 0, "this guy!!   ")

TextMain($43A45DB2, 0, 1, "Lupin]  ")
TextMain($43A45DCA, 0, 0, "Jigen!")
TextMain($43A45DD6, 0, 0, "He is trying to kill you! ")

TextMain($43A45E18, 14, 1, "Jigen]")
TextMain($43A45E3C, 18, 0, "What?   ")

TextMain($43A45E7E, 2, 1, "Jigen]")
TextMain($43A45E96, 1, 0, "That guy, made a hole in my gun barrel!")

TextMain($43A45FB2, 6, 1, "Jigen]")
TextMain($43A45FED, 0, 0, "Apparently in addition to us, it seems")
TextMain($43A46019, 0, 0, "there are guys also looking for this. ")

TextMain($43A46095, 12, 1, "Lupin]  ")
TextMain($43A460E6, 1, 0, "Do you think so?           ")
TextMain($43A46108, 1, 0, "That guy, he was really trying to get it!")

TextMain($43A4618C, 6, 1, "Jigen]")
TextMain($43A461B0, 0, 0, "... Also,   ")
TextMain($43A461DF, 0, 0, "how was he so incredible? ")

TextMain($43A46269, 12, 1, "Lupin]  ")
TextMain($43A462AC, 10, 0, "I bet we are going to meet more ")
TextMain($43A462DC, 10, 0, "incredible people like that!")

TextMain($43A46372, 6, 1, "Jigen]")
TextMain($43A463A5, 0, 0, "What? You   ")
TextMain($43A463B7, 0, 0, "do not know that for sure!")

TextMain($43A4642B, 12, 1, "Lupin]  ")
TextMain($43A46466, 12, 0, "Well  ")
TextMain($43A4647E, 12, 0, "we will have to see!")

TextMain($43A464F8, 6, 1, "Jigen]")
TextMain($43A46533, 6, 0, "O.K...      ")

TextMain($43A46611, 10, 1, "Zenigata] ")
TextMain($43A46635, 0, 0, "He was 1 step ahead of me,")
TextMain($43A46655, 0, 0, "I got here too late to catch him!       ")

TextMain($43A466A5, 8, 1, "Zenigata] ")
TextMain($43A466C7, 8, 0, "I will find you Lupin!")

// Credits
TextMain($43A479EC, 10, 0, "Original Work     ")
TextMain($43A47A0E, 12, 0, "Monkey Punch                  ")
TextMain($43A47A3E, 12, 0, "(Published by Chuokoron-Shinsha)")

