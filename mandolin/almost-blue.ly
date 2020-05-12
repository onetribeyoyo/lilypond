\header{
  title = "Almost Blue (for Mandolin)"
  composer = "Elvis Costello"
  tagline = "" % removed
}

words = \lyricmode {
  %% 1st verse....
  Al- most blue, __ al- most do- ing things we used to do,
  there's a girl here and she's al- most you, al- most.
  All the things that your eyes once pro- mised I see in hers too,
  now your eyes are red from cry- ing, al- most __ blue.
  Flirting_with this dis- aster_be- came me,
  it_named_me as the fool who on- ly aimed to be.

  %% 2nd verse....
  Al- most blue, __
  it's al- most touch- ing it will al- most do
  there's a part of me that's al- ways true, al- ways.
  Not all good things come to an end now it is on-ly_a chos- en few,
  I have seen such an un- hap- py coup- le,
  al- most me,
  al- most you, __
  al- most blue. __
}

music = {
  \time 4/4
  \language english
  { % 1st verse....
    r4 e8 e e2 (| e4) e8 g f e d c | r4 d8 e f2 | \break
    r4 r8 e16 g f8 e d c | r4 e16 (c d) a c2 | r4 e d2 | \break
    r4 a' b2 | c4 r8 a16 b c8 b a g | r4 g g8 g g4 | \break
    g2 bf8 a g f | e2 r4 f | e2 c2 | \break
    r4 b'2 (b8) a16 (e) | a2 r2 | r4 \times 2/3 { a8 (b c) } b a \times 2/3 { a (e f) } | \break
    g8 g4. r2 | r4 \times 2/3 { a8 (b c) } b a g f | a8 a a e e2 | \break
  }
  \bar "||"
  { % 2nd verse....
    r4 e8 e e2 (| e8.) e16 e8 g f e d c | r4 d8 e f2 | \break
    r4 r8 e16 g f8 e d c | r4 e16 (c d) a c2 | r4 e d2 | \break
    r4 a'8 a b4 b | c4 r8 a16 b c8 b a g | r4 \times 2/3 { g8 (g e) } g4 g | \break
    g2 bf8 a g f | e4 e e f | e2 c2 | \break
    b'8 a a2.\fermata | b8 c b (a) (a2\fermata) | c8 (b a) a b (a4.) (| a1) | \break
  }
  \bar "|."
}

<<
  \new Staff {
    \clef "treble"
    \relative c' { \music }
    \addlyrics { \words }
  }
  \new TabStaff {
    \set TabStaff.stringTunings = #mandolin-tuning
    \relative c' { \music }
  }
>>

\version "2.14.2"  % necessary for upgrading to future LilyPond versions.
