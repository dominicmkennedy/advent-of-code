Input ← ⊜∘≠@\n.&fras "day_4_input.txt"

# part 1
ParseNums ← ≡≡(□⊐⊜parse≠, @ ) ≡⊜□≠, @|≡↘10
CountNums ← /+⍉≡(∊⊃(⊔⊢⇌)(⊔⊢)) ParseNums
Score ← /+ⁿ:2-1▽≠0. CountNums
$"Part One: _" Score Input
