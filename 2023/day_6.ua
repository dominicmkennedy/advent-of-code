Input ← ⊜∘≠@\n.&fras "day_6_input.txt"

ParseInOne ← ⍉[∩(⊜parse≠,@ ↘10)⊃⊢(⊢⇌)]
ParseInTwo ← [[∩(parse▽ ≠@ .↘10)⊃⊢(⊢⇌)]]
QuadEq ← ∩(÷2)⊃+- √-× 4 : ⁿ2 ,
Score ← /× ≡(-:⊓⌈(⌊+1) QuadEq ⊃(⊢⇌)⊢)

$"Part One: _" Score ParseInOne Input
$"Part Two: _" Score ParseInTwo Input
