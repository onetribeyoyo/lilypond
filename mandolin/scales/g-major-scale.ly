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
  { % triplets
    \tuplet 3/2 { g8 [a b] }
    \tuplet 3/2 { c [d e] }
    \tuplet 3/2 { fs [g a] }
    \tuplet 3/2 { b [c d] }
    \tuplet 3/2 { e [fs g] }
    \tuplet 3/2 { g [fs e] }
    \tuplet 3/2 { d [c b] }
    \tuplet 3/2 { a [g fs] }
    \tuplet 3/2 { e [d c] }
    \tuplet 3/2 { b [a g] }
    r2
  }
  \bar "||"
  \break
  { % sixteen notes
    g16 a b c d e fs g a b c d fs g8.
    g16 fs e d c b a g fs e d c b a g8
  }
  \bar "||"
  \break
  { % what's this called?
    \tuplet 3/2 { g8 [a b] }
    \tuplet 3/2 { a [b c] }
    \tuplet 3/2 { b [c d] }
    \tuplet 3/2 { c [d e] }
    \tuplet 3/2 { d [e fs] }
    \tuplet 3/2 { e [fs g] }
    \tuplet 3/2 { fs [g a] }
    \tuplet 3/2 { g [a b] }
    \tuplet 3/2 { a [b c] }
    \tuplet 3/2 { b [c d] }
    \tuplet 3/2 { c [d e] }
    \tuplet 3/2 { d [e fs] }
    \tuplet 3/2 { e [fs g] }
    \tuplet 3/2 { fs g r }
    r2
  }
  \bar "||"
  \break
  { % what's this called?
    g,,16 [a b c] a [b c d] b [c d e] c [d e fs]
    d [e fs g] e [fs g a] fs [g a b] g [a b c]
    a [b c d] b [c d e] c [d e fs] d [e fs g]
    e [fs g8] fs [g] r2
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
