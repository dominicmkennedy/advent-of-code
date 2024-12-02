Input ← ⊜□≠@\n.&fras "day_2_input.txt"

# part 1
SpltRounds ← ≡(□⊐⊜□≠, @;) ♭≡(↘1⊐⊜□≠, @:)
SpltCols ← ≡(□⊐≡⊐⊜□≠, @,)
SepNums ← ≡(□⊐≡⊐≡⊐⊜□≠, @ )
SepLists ← ∩≡(□⊐≡⊐≡⊐⊏) 0 : 1. SepNums SpltCols SpltRounds
ParseNums ← ≡(□⊐≡⊐≡⊐parse)
ParseLims ← ≡(□⊐≡⊐(⊏:[12 14 13]-3≡⧻))
CombineReduce ← ≡(/×⊐≥)∩≡(□⊐/⊂) ⊓ParseNums ParseLims
Score ← /+▽≠0:+1⇡⧻.

PartOne ← $"Part One: _" Score CombineReduce SepLists
PartOne Input

# part 2
ParseColors ← ≡(□⊐≡⊐(-3≡⧻))
PartTwoComb ← ⊐≡⊐⊕□ : ∩≡(□⊐/⊂) ⊓ParseNums ParseColors
ColorMax ← ⊐≡⊐≡/↥
ScoreTwo ← /+/×⍉

PartTwo ← $"Part Two: _" ScoreTwo ColorMax PartTwoComb SepLists
PartTwo Input
