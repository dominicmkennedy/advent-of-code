Input ← ⊜□≠@\n.&fras "day_7_input.txt"

# part 1
ParsedInput ← ⊃(≡(⊐⋕⊢⇌)) (≡(°□⊢)) ≡(⊜□≠, @  °□) Input
Hands ← ;ParsedInput
Bids ← ;:ParsedInput
CardRanks ← {[1 1 1 1 1] [1 1 1 2] [1 2 2] [1 1 3] [2 3] [1 4] [5]}
GetType ← ⊢⊚⌕□ :CardRanks ⊏⍏.⊕⧻⊛.
ValOrder ← ♭≡⊚⊠⌕:
GroupTypes! ← ≡(□⊚=≡^1 Hands) ⇡7
ExactOrder! ← ⊐/⊂≡⍜°□ (⊏⍏⊏:≡^1 Hands .)

Score ← /+×+1⇡⧻.⊏ExactOrder!(ValOrder"23456789TJQKA") GroupTypes!GetType Bids
$"Part One: _" Score

# part 2
WildFix ← ⍣(⍜⊏(+@J×0-@0)⊚=⊏⊢⍖°⊚⊛:⊝. ▽≠@J...)⋅⋅"JJJJJ"
Score ← /+×+1⇡⧻.⊏ExactOrder!(ValOrder"J23456789TQKA") GroupTypes!(GetType WildFix) Bids
$"Part Two: _" Score
