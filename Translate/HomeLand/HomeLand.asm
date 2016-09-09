// GameCube "HomeLand" Japanese To English Translation by krom (Peter Lemon):

output "HomeLand.iso", create
origin $000000; insert "HomeLand [J].iso" // Include Japanese HomeLand ISO

macro Text(OFFSET, TEXT) {
  origin {OFFSET}
  db {TEXT} // ASCII Text To Print
}

// Memory Card
Text($00115B3C, "Please Wait") ; fill 13

Text($00115CFC, "There is a problem with the memory card in SlotA.\n")
Text($00115D2E, "It might get fixed by initializing it,     \n")
Text($00115D5A, "but all the data will be lost.  \n")
Text($00115D7B, "Do you want to initialize?") ; fill 3

Text($00115DE8, "Initializing memory card. Is this OK?") ; fill 7

Text($00115E6C, "It is now initialized.") ; fill 2

Text($00115EC0, "It will not be able to save your progress in the game.") ; fill 6

Text($00116084, "The memory card in Slot A is used to record the adventure.\n")
Text($001160BF, "Please do not turn off the power or remove the card.") ; fill 5

Text($001160F8, "The adventure was recorded.") ; fill 1

// Menus
Text($00199B58, "Yes") ; fill 5
Text($00199B60, "No") ; fill 6

// Banner Text
Text($49A0D7F8, "HomeLand") ; fill 24 // Title Text (32 Bytes)
Text($49A0D838, "HomeLand") ; fill 56 // Long Title Text (64 Bytes)
Text($49A0D8B8, "Adventures in a magical world, let's solve the mystery & incident.") ; fill 61 // Description Text (128 Bytes)

// Story
Text($23E21A08, "\dOne day, not the same as usual...\d") ; fill 3

// Start Game
Text($57051B14, "Which will you start with, a girl or a boy?") ; fill 5
Text($57051B44, "Please name your character.") ; fill 1
Text($57051B60, "You cannot use the same name which exists on this memory card.") ; fill 2
Text($57051BA0, "Adventure will start with this name.") ; fill 4
Text($57051BC8, "New adventure data has been stored on this memory card.") ; fill 7

Text($57051D18, "%03dhours %02dmins") ; fill 6

Text($57051F54, "Check memory card SlotA") ; fill 1
Text($57051F6C, "Edit this memory card") ; fill 11
Text($57051F8C, "Start without saving data") ; fill 23
Text($57051FBC, "Is it OK to erase this data?") ; fill 8
Text($57051FE0, "Are you sure about erasing this data?") ; fill 11

Text($570520E8, "Is it OK to erase this data?") ; fill 8
Text($5705210C, "Are you sure about erasing this data?") ; fill 11

Text($57052168, "Failed to load this memory card") ; fill 9

Text($570523A8, "    Play Time:") ; fill 6

// Start Screen
Text($57052600, "Weapons") ; fill 1
Text($57052608, "Shields") ; fill 1
Text($57052610, "Items") ; fill 3
Text($57052618, "You have  %D EXP") ; fill 4
Text($5705262C, "Begin A New Game") ; fill 4
Text($57052640, "Network") ; fill 9
Text($57052650, "Network Setup") ; fill 3
Text($57052660, "Connection Test") ; fill 1
Text($57052670, "Production Staff") ; fill 4

Text($57052684, "Go To The Network Settings.       \n")
Text($570526A7, "Is This OK?") ; fill 14