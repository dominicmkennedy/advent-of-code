Input ← &fras "day_9_input.txt"

Parse ← ⊜(⊜⋕≠, @ )≠,@\n
PredRow!! ← /^2;⍢⊃(≡/-◫2)(⊂⊢^1) (/↥≠0):[]
$"Part One: _" /+≡PredRow!!+⇌ Parse Input
$"Part Two: _" /+≡PredRow!!-∘ Parse Input
