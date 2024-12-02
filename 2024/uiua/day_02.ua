Input ← &fras "../input/day_02_input.txt"

Parse ← ⊜(□⊜⋕⊸≠@ )⊸≠@\n
Check ← /+≡°□≡⍜°□(/×∈1_2_3)
Diff  ← ×±⊸⊢/-⍉◫2
Combo ← ⍚(≡(⍜↻(↘1))⊙¤⇡⊸⧻)
Data  ← Parse Input

Check≡⍚Diff Data
/+≡(≠0Check≡Diff°□) Combo Data
