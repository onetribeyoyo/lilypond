\header{
  title = "Chromatic Scale"
  tagline = "" % removed
}

words = \lyricmode {
    g - a - b c - d - e f -
    g - a - b c - d - e f -
    g - a -
}

music = {
  \time 4/4
  \language english
  { % quarter notes
    g gs a as b c cs d ds e f fs \break

    g gs a as b c cs d ds e f fs
    g gs a as
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
