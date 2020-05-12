\version "2.16.0"
\include "./predefined-mandolin-fretboards.ly"

\header {
  tagline = ""  % removed
}

mychords = \chordmode {
  c1 c:m
  \break
}

chordsline = {
  \mychords
  \transpose c d   { \mychords }
  \transpose c e   { \mychords }
  \transpose c f   { \mychords }
  \transpose c g   { \mychords }
  \transpose c a   { \mychords }
  \transpose c b   { \mychords }
}

\score {
  <<
    \new ChordNames {
      \chordsline
    }
    \new FretBoards {
      \override FretBoards.FretBoard.size = #'1.5
      \set Staff.stringTunings = #mandolin-tuning
      \chordsline
    }
    \new Staff {
      \set Staff.stringTunings = #mandolin-tuning
      \chordsline
    }
  >>
  \layout {
    indent = 0.0
    \context {
      \Score
      \remove "Bar_number_engraver"
    }
  }
}
