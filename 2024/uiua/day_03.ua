Input    ← &fras "../input/day_03_input.txt"
Pattern  ← "mul\\((\\d+),(\\d+)\\)|do\\(\\)|don't\\(\\)"
Data     ← ⬚"0"regex Pattern Input
Calc     ← /+≡(×∩⋕⊏2:⊸⊏1)
IsDo     ← ≡(=⧻°□⊢:)
MakeMask ← ⊂1+×2:⊃(IsDo4)(IsDo7)
GetRows  ← ▽=1↘1\(⨬(∘|1|2):) MakeMask .

Calc Data
Calc GetRows Data
