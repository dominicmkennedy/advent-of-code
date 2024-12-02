# Experimental!

Input ← &fras "../input/day_01_input.txt"
Parse ← ⍉⊜(⊜⋕≠@ .)≠@\n.
a     ← ⊢Parse Input
b     ← ⊣Parse Input
/+⌵-∩⍆a b
/+≡(×/+=:b.) a
