Input ← ⊜□≠@\n.&fras "day_1_input.txt"

# part 1
IsNum ← =2+⊃(≤@9)(≥@0)
ParseNums ← -@0≡(□⊐▽)IsNum.
AddNums ← /+≡+≡⊃(⊢⇌)(×10⊢)
PartOne ← $"Part One: _" AddNums ParseNums

PartOne Input

# part 2
NumStrs ← {"" "zero" "one" "two" "three" "four" "five" "six" "seven" "eight" "nine"}

GetRegNums ← -1×=2+⊃(≤10)(≥1).+1 -@0
GetStrNums ← ≡(□-1/+×⇡⧻.) ⍉⊠(□⊐⍣⌕⋅⋅⋅0) NumStrs
GetFulArrs ← ++1 GetRegNums :GetStrNums.
CombinArrs ← /+≡+≡⊃(⊢⇌)(×10⊢) ≡(□⊐▽)≠¯1.
PartTwo ← $"Part Two: _" CombinArrs GetFulArrs

PartTwo Input
