Input ← &fras "day_9_input.txt"

# part 1
Parse ← ⊜(⊜⋕≠, @ )≠,@\n
PredRow ← /+;⍢⊃(≡/-◫2)(⊂⊢⇌) (/↥≠0):[]
$"Part One: _" /+≡PredRow Parse Input
