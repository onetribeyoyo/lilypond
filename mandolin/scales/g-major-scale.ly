\header{
  title = "G Major Scale"
  tagline = "" % removed
}

music = {
  \time 4/4
  \language english
  { % quarter notes
    g a b c
    d e fs g
    a b c d
    e fs g2

    g4 fs e d
    c b a g
    fs e d c
    b a g2
  }
  \bar "||"
  \break
  { % eight notes
    g8 a b c d e fs g
    a b c d e fs g4

    g8 fs e d c b a g
    fs e d c b a g4
  }
  \bar "||"
  \break
  { % sixteen notes
    g16 a b c
    d e fs g
    a b c d
    fs g8.

    g16 fs e d
    c b a g
    fs e d c
    b a g8.
  }
  \bar "||"
  \break
  { % triplets
    \tuplet 3/2 { g8 a b }
    \tuplet 3/2 { c d e }
    \tuplet 3/2 { fs g a }
    \tuplet 3/2 { b c d }

    \tuplet 3/2 { e fs g }

    \tuplet 3/2 { g fs e }
    \tuplet 3/2 { d c b }
    \tuplet 3/2 { a g fs }

    \tuplet 3/2 { e d c }
    \tuplet 3/2 { b a g }
    r2
  }
  \bar "||"
  \break
  { % what's this called?
    g4 a b r
    a b c r
    b c d r
    c d e r
    d e fs r
    e fs g r
    fs g a r
  }
  \bar "||"
  \break
  {
    g a b r
    a b c r
    b c d r
    c d e r
    d e fs r
    e fs g r
    fs g r2
    g r2.
  }
  \bar "|."
}

<<
  \new Staff {
    \clef "treble"
    \relative c' { \music }
  }
  \new TabStaff {
    \set TabStaff.stringTunings = #mandolin-tuning
    \relative c' { \music }
  }
>>

\version "2.14.2"  % necessary for upgrading to future LilyPond versions.
