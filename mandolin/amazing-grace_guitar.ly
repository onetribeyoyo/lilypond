\header{
  title = "Amazing Grace (for Guitar)"
  composer = "traditional"
  tagline = "" % removed
}

music = {
  \key g \major
  \time 3/4
  { % 1st verse....
    r2 d4 | g2 b8 (g) | b2 a4 | g2 e4 | \break
    \set Score.currentBarNumber = #4
    d2 d4 | g2 b8 (g) | b2 a4 | d2. (| \break
    d2) b4 | d4. (b8) d8 (b) | g2 d4 | e4. (g8) g (d) | \break
    d2 d4 | g2 b8 (g8) | b2 a4 | g2. (| g2)
  }
  \bar "|."
}

firstVerse = \lyricmode {
  A- maz- ing __ grace how sweet the sound, That saved a __ wretch like me! __
  I once __ was __ lost but now __ am __ found, Was blind but __ now I see. __
}
secondVerse = \lyricmode {
  'Twas grace that __ taught my heart to fear, And grace my __ fears re- lieved; __
  How pre- cious did that grace __ ap- __ pear The hour I __ first be- lieved. __
}
thirdVerse = \lyricmode {
  The Lord has __ prom- ised good to me, His word my __ hope se- cures; __
  He will __ my __ sheild and por- tion __ be As long as __ life en- dures. __
}
fourthVerse = \lyricmode {
  Through man- y __ dan- ergs, toils and snares, I have al- read- y come; __
  'Tis grace __ hath __ brought me safe __ thus __ far, And grace will __ lead me home. __
}
fifthVerse = \lyricmode {
  When We've been __ there ten thou- sand years, Bright shin- ing __ as the sun, __
  We've no __ less __ days to sign __ God's praise Than when we'd __ first be __ gun. __
}

<<
  \new Staff {
    \clef "treble"
    \relative c' { \music }
    \addlyrics { \firstVerse }
    \addlyrics { \secondVerse }
    \addlyrics { \thirdVerse }
    \addlyrics { \fourthVerse }
    \addlyrics { \fifthVerse }
  }
  \new TabStaff {
    \set TabStaff.stringTunings = #guitar-tuning
    \relative c { \music }
  }
>>

\version "2.14.2"  % necessary for upgrading to future LilyPond versions.
