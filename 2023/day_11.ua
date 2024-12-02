Input ← &fras "day_11_input.txt"

Parse ← =@#⊜∘≠, @\n
ExpUni! ← +/+^1⊞>⊙.
Coords! ← [∩ExpUni!^1⊃(⊃(⊚=0/+⍉)(⊢⍉⊚))(⊃(⊚=0/+)(⊢⇌⍉⊚))]

Dist ← +⊃(⌵-∩⊢)(⌵-∩(⊢⇌))
Score ← ÷2/+/+⊠Dist.⍉
$"Part One: _" Score Coords!∘ Parse Input
$"Part Two: _" Score Coords!(×999999) Parse Input
