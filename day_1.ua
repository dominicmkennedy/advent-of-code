Input ← ⊜□≠@\n.&fras "day_1_input.txt"

# part 1
IsNum ← =2+⊃(≤@9)(≥@0)
ParseNums ← -@0≡(□⊐▽)IsNum.
AddNums ← /+≡+≡⊃(⊢⇌)(×10⊢)

AddNums ParseNums Input
