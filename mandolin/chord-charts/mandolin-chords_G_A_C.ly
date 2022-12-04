\version "2.16.0"
\include "./predefined-mandolin-fretboards.ly"

\header {
  tagline = ""  % removed
}

mychords = \chordmode {
  c1 c:m c:aug c:dim7 c:7 c:maj7 c:m7 c:m7.5- c:6 c:sus2 c:sus4 c:9
  \break
}

chordsline = {
  \mychords
  \transpose c g   { \mychords }
  \transpose c a   { \mychords }
}

\score {
  <<
    \new ChordNames {
      \chordsline
    }
    \new FretBoards {
      \override FretBoards.FretBoard.size = #'1.4
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
