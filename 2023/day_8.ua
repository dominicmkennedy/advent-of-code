Input ← ⊜□≠@\n.&fras "day_8_input.txt"

# TestIn ← {"LLR" "" "AAA = (BBB, BBB)" "BBB = (AAA, ZZZ)" "ZZZ = (ZZZ, ZZZ)"}
# TestIn ← {"RL" "" "AAA = (BBB, CCC)" "BBB = (DDD, EEE)" "CCC = (ZZZ, GGG)" "DDD = (DDD, DDD)" "EEE = (EEE, EEE)" "GGG = (GGG, GGG)" "ZZZ = (ZZZ, ZZZ)"}
# LRs ← °□⊢Input
# IMap ← ≡(↙3°□)↘2Input
# LRMap ← [≡⊃(↙3↘7°□)(↙3↘12°□) ↘2Input]
# 
# MapInd ← ⊗ "AAA"IMap
# 
# F ← :+1:⊗:IMap⊏:⊙:⊏ :LRMap=@R ⊏◿⧻LRs :LRs :.:
# ;⍢F(≠□"ZZZ"□⊏:IMap) 0 MapInd

LRs ← =@R°□⊢Input
IMap ← ≡(↙3°□) ↘2Input
IA ← ⊗"AAA"IMap
IZ ← ⊗"ZZZ"IMap
LRMap ← [∩(⊗:IMap)≡⊃(↙3↘7°□)(↙3↘12°□)] ↘2Input

F ← :+1:⊏:⊙:⊏ :LRMap ⊏◿⧻LRs :LRs :.:
;⍢F(≠IZ) 0 IA
