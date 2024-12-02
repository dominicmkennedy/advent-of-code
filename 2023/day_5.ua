Input ← ⊕□⍜▽¯:\+.=, @\n &fras "day_5_input.txt"

# part 1
Seeds ← ⊜parse≠,@ ↘7⊔⊢Input
BlankRows ← ⊚⌕□"" ⊂Input □""

GetRowStart ← ⊢⊚⌕□:Input
GetRowEnd ← -1⊢▽>⊙.:BlankRows GetRowStart

GetRange ← ++1⇡-⊙:.⊃GetRowStart GetRowEnd
GetMap ← ≡(⊐⊜parse≠,@ )⊏: Input GetRange

IsIn ← □⊐⊚≡(=2+⊃(≥⊏1)(<+⊃(⊏1)(⊏2)))
Conv ← ⍣(-:+:⊙:⊏0:⊏1.)(;:;) ♭⊏:

StSM ← GetMap "seed-to-soil map:"
StFM ← GetMap "soil-to-fertilizer map:"
FtWM ← GetMap "fertilizer-to-water map:"
WtLM ← GetMap "water-to-light map:"
LtTM ← GetMap "light-to-temperature map:"
TtHM ← GetMap "temperature-to-humidity map:"
HtLM ← GetMap "humidity-to-location map:"

StSC ← Conv StSM ♭≡(IsIn StSM) .
StFC ← Conv StFM ♭≡(IsIn StFM) .
FtWC ← Conv FtWM ♭≡(IsIn FtWM) .
WtLC ← Conv WtLM ♭≡(IsIn WtLM) .
LtTC ← Conv LtTM ♭≡(IsIn LtTM) .
TtHC ← Conv TtHM ♭≡(IsIn TtHM) .
HtLC ← Conv HtLM ♭≡(IsIn HtLM) .

Score ← /↧ ≡⊐HtLC ≡⊐TtHC ≡⊐LtTC ≡⊐WtLC ≡⊐FtWC ≡⊐StFC ≡⊐StSC Seeds
$"Part One: _" Score
