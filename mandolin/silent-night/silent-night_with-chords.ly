\header{
  title = "Silent Night (for Mandolin)"
  composer = "traditional"
  tagline = "" % removed
}

music = {
  \key g \major
  \time 3/4
  { % 1st verse....
    g8[ b] d[ g] b[ d] | g[ d] g[ d] g[ d] | g,,[ b] d[ g] b[ d] | g[ d] g[ d] g[ d] | \break

    d[ b] g[ e'] d4 | b8^"G 0 0 2 3"[ g] d[ g] b4 | d8^"G 0 0 2 3"[ b] g[ e'] d4 | b8^"G 0 0 2 3"[ g] d[ g] b4 | \break

    a'8^"D 2 0 0 2"[ fis] d[ fis] a4 | fis8^"D 2 0 0 2"[ d] a[ d] fis4 | g8^"G 0 0 2 3"[ d] b[ d] g4 | d8^"G 0 0 2 3"[ b] g[ b] f'4 | \break

    e8^"C 0 2 3 0"[ c] g[ c] e4 | <g c,>4.^"C 0 2 3 0" <fis c>8 <e c>4 | d8^"G 0 0 2 3"[ b] g[ e'] d4 | b8^"G 0 0 2 3"[ g] d[ g] b4 | \break

    e8^"C 0 2 3 0"[ c] g[ c] e4 | <g c,>4.^"C 0 2 3 0" <fis c>8 <e c>4 | d8^"G 0 0 2 3"[ b] g[ e'] d4 | b8^"G 0 0 2 3"[ g] d[ g] b4 | \break

    a'8^"D 2 0 0 2"[ fis] d[ fis] a4 | <c d,> <a d,> <fis d> | g8^"G 0 0 2 3"[ d] b[ d] g4 | b8^"G 0 0 2 3"[ g] d[ g] b4 | \break

    <g d>^"G 0 0 2 3" <d b> <b g> | d8^"D 2 0 0 2"[ a] fis[ c'] a4 | g,8^"G 0 0 2 3"[ b] d[ g] b[ d] | g2.
  }
  \bar "|."
}

firstVerse = \lyricmode {
  Si lent night ho ly night
  All is Calm All is Bright
  Round yon vir gin mo ther and child
  Ho lu in fant so ten der and mild
  Sleep in hea ven ly pea ce
  Sle ep in hea ven ly peace
}

<<
  \new Staff {
    \clef "treble"
    \relative c' { \music }
    %% \addlyrics { \firstVerse }
  }
  \new TabStaff {
    \set TabStaff.stringTunings = #mandolin-tuning
    \relative c' { \music }
  }
>>

\version "2.14.2"  % necessary for upgrading to future LilyPond versions.
