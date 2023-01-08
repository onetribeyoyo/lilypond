\header{
  title = "Hallelujah (for Mandolin)"
  composer = "Leonard Cohen"
  tagline = "" % removed
}

firstVerse = \lyricmode {
  Now I've heard there was a secret chord
  That David played, and it pleased the Lord
  But you don't really care for music, do ya?
  It goes like this, the fourth, the fifth
  The minor fall, the major lift
  The baffled king composing "Hallelujah"
}
chorus = \lyricmode {
  Hallelujah, Hallelujah
  Hallelujah, Hallelujah
}
secondVerse = \lyricmode {
  Your faith was strong but you needed proof
  You saw her bathing on the roof
  Her beauty in the moonlight overthrew ya
  She tied you to a kitchen chair
  She broke your throne, and she cut your hair
  And from your lips she drew the Hallelujah
}
thirdVerse = \lyricmode {
  You say I took the name in vain
  I don't even know the name
  But if I did, well really, what's it to ya?
  There's a blaze of light in every word
  It doesn't matter which you heard
  The holy or the broken Hallelujah
}
fourthVerse = \lyricmode {
  I did my best, it wasn't much
  I couldn't feel, so I tried to touch
  I've told the truth, I didn't come to fool ya
  And even though it all went wrong
  I'll stand before the lord of song
  With nothing on my tongue but hallelujah
}



%% ^"C 0 2 3 0"

%% ^"D 2 0 0 2"

%% ^"Em 0 2 2 0"

%% ^"G 0 0 2 3"

%% ^"B 1-1 3 4"




notes = {
  r2. r4. r8 d8 d \bar ".|:"
  d4.^"G 0 0 2 3" d8 d d e^"Em 0 2 2 0" e e( e4) b8 |
  d8^"G 0 0 2 3" d d( d) d d e4^"Em 0 2 2 0" b8 b4 e8 |
  \break
  e8^"C 0 2 3 0" e4 e8 e4 e^"D 2 0 0 2" d8 d c4 |
  d8^"G 0 0 2 3" b4 r4. r4.^"D 2 0 0 2" r4 d8 |
  d8^"G 0 0 2 3" d4 d d8 e4^"C 0 2 3 0" e8 fis4^"D 2 0 0 2" fis8 |
  \break
  g8^"Em 0 2 2 0" g4 g g8 b^"C 0 2 3 0" g4 a g8 |
  a8^"D 2 0 0 2" a4 a a8 a^"B 1-1 3 4" a4 b a8 |
  a8( g) g( g4) r8 r4. b8 d4 |
  \break
  e4. e8 r4 r4. e4 d8 |
  b4.^"Em 0 2 2 0" b8 r4 r4. b8 d4 |
  e4.^"C 0 2 3 0" e8 r4 r4. e4 d8 |
  \break

  %% volta 1,2,3
  b2.(^"1.2.3.." a2.) |
  g2. r4. r4 fis8  \bar ":|."
  \break

  %% volta 4
  b4.(~^"4." b4 a8) a4 r8 b8 d4 |
  e4. e8 r4 r4. e4 d8 |
  b4. b8 r4 r4. b4 d8 |
  \break
  e4. e8 r4 r4. e8 d4 |
  b4.(~ b4 a8) a4 r8 b8 d4 \bar ".|:"
  e4. e8 r4 r4. e4 d8 |
  \break
  b4. b8 r4 r4. b8 d4 |
  e4. e8 r4 r4. e4 d8 |
  b4.(~ b4 a8) a4 r8 b8 d4 \bar ":|."
}

<<
  \new Staff {
    \clef "treble"
    \key g \major
    \time 12/8
    \relative c' {
      \notes
      %% \addlyrics { \firstVerse }
      %% \addlyrics { \choris }
      %% \addlyrics { \secondVerse }
      %% \addlyrics { \choris }
      %% \addlyrics { \thirdVerse }
      %% \addlyrics { \choris }
      %% \addlyrics { \fourthVerse }
    }
  }
  \new TabStaff {
    \set TabStaff.stringTunings = #mandolin-tuning
    \relative c' { \notes}
  }
>>

\version "2.14.2"  % necessary for upgrading to future LilyPond versions.
