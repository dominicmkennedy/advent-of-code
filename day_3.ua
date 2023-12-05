Input ← ⊜∘≠@\n.&fras "day_3_input.txt"

# part 1
IsNum ← =2+⊃(≤@9)(≥@0)
IsSym ← =1+⊃(¬IsNum)(=@.)
OneAway ← ++⊃⊃(=0)(=1)(=¯1)-
IsAdj ← ×∩OneAway⊙:∩⊃⊢(⊢⇌)
NumLenWind ← ◫2\+⊂0≡(⧻$"_")
GetNumIs ← ≠0/+↘:↙⊙:⊃(⊢⇌)⊢:

NumList ← ⊐/⊂ ≡(□⊐⊜parse) IsNum . Input
AdjList ← /+⊠IsAdj ∩⊚⊃IsSym IsNum Input
Score ← /+▽≡(GetNumIs AdjList) NumLenWind . NumList

$"Part One: _" Score

# part 2
AdjList ← ⊠IsAdj ∩⊚⊃IsNum (=@*) Input
GearTouchs ← ≠0≡⊐/+≡(□⊐↘:↙⊙:⊃(⊢⇌)⊢:AdjList)NumLenWind NumList
GearInds ← ≡⊚⊏⊚ =2/+ :⍉ .GearTouchs
Score ← /+/×⍉≡⊐⊏ GearInds □NumList

$"Part Two: _" Score
