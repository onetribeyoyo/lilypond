\header{
  title = "Amazing Grace (for Mandolin)"
  composer = "traditional"
  tagline = "" % removed
}

words = \lyricmode {
  %% 1st verse....
  A- maz- ing __ grace how sweet the sound, That saved a __ wretch like me! __
  I once __ was __ lost but now __ am __ found, Was blind but __ now I see. __

  %% 2nd verse....

  %% 3rd verse....

  %% 4th verse....

  %% 5th verse....
}

music = {
  \time 3/4
  \language english
  { % 1st verse....
    r2 d4 | g2 b8 (g) | b2 a4 | g2 e4 | \break
    d2 d4 | g2 b8 (g) | b2 a4 | d2. (| \break
    d2) b4 | d4. (b8) d8 (b) | g2 d4 | e4. (g8) g (d) | \break
    d2 d4 | g2 b8 (g8) | b2 a4 | g2. (| g2)
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
