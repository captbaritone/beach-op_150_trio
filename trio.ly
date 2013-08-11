\version "2.10.10"
dolce = \markup{ \italic dolce }
\header {
    title = "Trio"
    instrument = "Violin"
    opus = "Op. 150"
    tagline = "v0.1 send corrections to jordaneldredge@gmail.com"
}
global = {
  \dynamicDown
  % Hide extender lines for dynamic markings
  \override DynamicTextSpanner #'style = #'none
  \set Score.skipBars = ##t
  \set Score.markFormatter = #format-mark-circle-numbers
}

allegroMelody = \relative c'' {
  R2.*20 |
  % Page 6
  \mark \default
  gis'2\pp(
  fis4~ |
  fis\< ) dis( d | 
  c\!\> b a ) |
  g?\!( << f?2~ { s4 s\> } >> |
  % Page 7
  f2\! ) r4 |
  R2. |
  r4 c'4\p^\dolce ( d |
  dis e eis ) |
  fis ( cis2~ |
  cis4 ) c2~\cresc ( |
  c4\~ b2~ |
  % Page 8
  b4\< a ) a'~\!\mf( |
  a gis e~ |
  e) f4. ( b,8 ) |
  % XXX spanners
  b8^\markup { \italic "dim." } ( c ) c4.^\markup { \italic "e" } ( e,8^\markup { \italic "rit." } ) |
  e4( << dis2~ { s4 s\> } >> |
  % Page 9
  dis4\!) r4^\markup { \italic "più rit." } r |
  \bar "||"
  \key ees \major
  R2.*1^"Tranquillo" |
  b'4\pp( c ) aes~( |
  aes8 fis aes g) g'4~( |
  g\>^\markup{ \italic "rit." } aes ces )
  R2.\!^\markup{ \italic "a tempo" }
  g4.\p^\markup{ \italic "espressivo" } ( aes8 b4~ |
  b ) c4.( d8 ) |
  d4( g,2~ |
  g2 ) g4~ ( |
  g8\< f e f g aes ) |
  b( c ees4. d8 ) |
  d4\!( bes?2~ |
  bes4\cresc ) c4.( d8 ) |
  % Page 10
  f2\mf ( ees4~ |
  ees ) g4.( c,8 ) |
  b4 ( c ) dis~ |
  \key b \major
  dis eis,4. ( gis8  ) |
  b2.~\dim |
  b2.~ | 
  b4 b,\pp( e ) |
  ais,8\>( gis gis'2 ) |
  \mark \default % Rehearsal 2
  R2.*2 |
  r4 r b,,~\pp( |
  b8 ais ) cis4.( b8 ) |
  b'2._\markup { \italic "sempre" \dynamic pp } |
  b,2( eis4 ) |
  ais,8( b ) b'4.\< ( ais8 |
  % Page 11
  a4\! ) b,\f\< ( fisis' |
  << gis2. ) { s4 s2\! } >> |
  e2.( |
  dis2. ) |
  cis4 a2\dim ( |
  b4 ) g2~\> |
  g4 gis'?\pp ( f ) |
  ais2.\> ( |
  ais ) |
  \pageBreak
  \mark \default % Rehearsal 3
  R2.*2\! |
  % Page 12
  e4.\pp( fis8 g4~ |
  g ) ais4.\< ( b8 ) |
  b4\> ( eis,2~\! |
  eis4 ) ais ( b |
  ais e? f ) |
  \bar "||"
  \key c \major
  b^"Più agitato"_\markup { \italic "cresc. poco a poco"} ( a8 g fis f ) |
  e ( f ) d'4 ( b ) |
  g'4-- b,-- gis'-- |
  e8( f g gis ) e ( f |
  b4\< )  e,8 ( f g? gis ) |
  R2.\! |
  R2.^\markup { \italic "rallentando" } |
  r4 a--\f f-- |
  c'2. |
  % Page 13
  e,2.\ff^"Maestoso" |
  a |
  f~ |
  f2 r4 |
  % Should fit in measure
  e'2._\markup { \italic "sempre con tutta forza" } |
  d |
  b~ |
  b2 r4 |
  \mark \default
  c2. |
  d |
  b |
  c |
  ais |
  b~ |
  b_\markup { \italic "accel." } |
  a~ |
  a4 r4 r |
  R2. 
  \mark \default
  R2._\markup { \italic "a tempo" } |
  R2. |
  r4 c,4\mf ( d ) |
  % Page 15
  dis\> ( e eis |
  fis\p cis2~ 
  cis4 ) c2~ |
  c4 b ( gis |
  % XXX Spanners
  g?^\markup { \italic "rit" } a2^\markup { \italic "e" } \> ) |
  e2.\!\pp^\markup { \italic "nuto" }
  % Page 16
  a4( ais ) b8( bis ) |
  \mark \default
  \bar "||"
  \key a \major
  cis4.^\markup { \italic "a tempo" } _\markup{ \italic "dolce" } ( d8 eis4~ |
  eis ) fis4. ( gis8 ) |
  gis4 ( cis,2~ |
  cis2 ) cis4 |
  fis,2. ( |
  d2 ) bis4 ( |
  cis2. ) |
  cis'2.\cresc |
  fis |
  cis |
  g'\< |
  cis4( bis2 ) |
  % Page 17
  \mark \default 
  gis'2.\f |
  fisis8( gis ) gis2 |
  gis8( a ) a2\< |
  fis4-> d-> b-> |
  e2.\ff |
  a2. |
  f |
  f,2( ges8 f~ |
  f e ) ees ( d cis c ) |
  b\dim ( bes a gis g fis ) |
  f2. ( |
  d4\> b gis ) |
  \mark \default
  cis2.~\p |
  % Page 18
  cis |
  cis'~ |
  cis~^\markup { \italic "sempre dim." } |
  cis~ |
  cis~\pp |
  cis~^\markup { \italic "rit. molto" } |
  cis\fermata 
  \bar "|."

}

lentoMelody = \relative c' {
  \set Score.skipBars = ##t
  \set Score.markFormatter = #format-mark-circle-numbers
  \partial 8
  cis8\pp^"Lento espressivo" ( |
  e8. d16 e d ) eis8 ( fis8. a16 ) |
  a4 ( eis8~\< eis ) fis8. ( a16 ) |
  << d2.\! ( { s4. s4.\> } >> |
  d2. |
  d8\! ) r r r4 r8 \bar "||"
  \time 9/8
  \mark \default
  << R8*9 { s4. s4^"rit." s8^"a tempo" } >>\bar "||"
  \time 6/8
  R8*6*3 |
  % Page 20
  r4 r8 r4 fis,8~\pp^"dolce" ( |
  fis a8. gis16 ) eis8 ( fis8. a16 ) |
  d4.~ d16 eis, ( cis' b e d ) |
  fis4~\cresc ( fis16 e ) cis8 ( d8. fis16 ) |
  % Page 21
  a4 ( gis8 ) eis8\< ( fis8. a16 ) |
  cis2.\mf |
}

allegroConBrioMelody = \relative c'' {
  R1*4 |
  e2\pp cis8-> ( a4 ) fis8 |
  a4-. fis-. cis'2~-> ( |
  cis8 a ) a ( fis ) cis'2~ |
  cis b'8\cresc ( a4 gis 8 ) |
  a2 gis8 ( fis4 e8 ) |
  fis4. ( e8 ) d ( b a b |
  fis4 ) a ( d b ) |
  fis2~\< ( fis8 d ) cis\! ( b ) |
  \mark \default % Rehearsal 1
  cis->\f b-. a-. b-. cis-> b-. a-. b -. |
  % Page 32
  cis-.-> d-. e-.-> d-. cis-.-> b-. a-. b-. |
  cis-.-> d-. e-.-> d-. cis-.-> b-. a-. b-. |
  cis-. dis-. eis-. fis-. gis-. a-. bis-. cis-. |
  e-> dis cis dis e dis cis dis |
  e->\< fis gis a bis-> ( cis ) dis e |
  a2->\ff cis,8 ( a4 ) fis8 |
  a4-. fis-. c'2~-> ( |
  c8 a ) a ( fis ) c'2~-> |
  c4 c,\mf b8\> ( c4 ) ees,8\p ( |
  d4 ) c-- d-- ees~ ( |
  ees8 c ) b a dis2 ( |
  % Page 33
  d?8 dis4 ) dis8\cresc ( e4 ) eis~ |
  eis cis'-- b8 ( d4-> ) d8 ( |
  f2 ) d8\< ( b4 ) b8 |
  fis'?2 dis8 ( c4 ) c8 \bar "||"
  \key c \major
  \mark \default % Rehearsal 2
  g'2\f e8 ( c4 ) a8 |
  c4-. a-. e'2~-> ( |
  e8 c ) c ( a ) c'2~\ff |
  c4 a-- f-- d-- |
  e8 ( d ) d f aes,2~\> ( |
  aes4. g8 ) aes ( g ) g aes |
  b1~\mf |
  b2\> des~\p |
  des1\> \bar "||"
  \key des \major 
  \mark \default
  % PAge 34
  bes'2\pp ges8 ( ees4 ) c8 |
  ees4-. c-. ges'2~ ( |
  ges8 fes ) fes^\markup { \italic "poco rit." } des fes2 |
  r4 d ( b aes |
  ges ) r4 r2 |
  r1 |
  \pageBreak
  R1*3^"Meno mosso" |
  r4\pp des' ( bes f ) |
  R1*3 |
  r4 c' ( bes aes ) |
  R1 |
  \mark \default
  r4 aes\pp ( g aes ) |
  des1 |
  ges, |
  aes4 ees ( e f~ |
  f4. ges8 ) des2~ ( |
  des4 ees f ges ) |
  aes\> ( beses ces des ) |
  R1*2\!
  f2\pp^\dolce ( ees4 des ) |
  ges4. ( aes8 beses2~ |
  beses4 ) ees, ( f4. ges8 )
  f1~ |
  f4 aes ( ges\< f ) |
  bes4. ( c8 des2~ |
  % Page 36
  des8\! f, ) e2 ( bes'4 ) |
  aes1\< |
  c2\!\< ( bes4 c~ |
  c ees2\! ) des4~ ( |
  des c bes4. c8 ) |
  aes2\> ges \bar "||"
  \key a \major
  \mark \default
  eis1\!\> ( |
  e?2 ) cis8 ( a4 ) fis8 ( |
  a4\! ) fis -. cis'2~ ( |
  cis1~\>^"rit." |
  cis8\mf a ) a( fis )
  cis'2~\> ( |
  cis8 a ) a ( fis ) cis'2~\p ( |
  cis4^\markup { \italic "più dim. e rit." } a ) a ( fis ) |
  cis'2. ( bis4 ) |
  cis1~\pp |
  cis2. r4\fermata \bar "||"
  % Page 37
  \pageBreak
  R1*2^"Tempo I" |
  e2\pp cis8 ( a4 ) fis8 |
  a4-. fis-. cis'2~ ( |
  cis8 a ) a ( fis ) cis'2~ |
  cis b'8 ( a4 gis8 ) |
  a2 gis8 ( fis4 e8 ) |
  fis4. ( e8 ) d ( b a b |
  fis4 ) a\cresc ( d b ) |
  fis2~ ( fis8 d ) d ( b) |
  \mark \default % Rehearsal 6
  cis->\mf b a b cis-> b a b |
  cis-> d e-> d cis-> b a b |
  cis-> d e-> d cis-> b a b |
  cis\> dis eis fis g a b cis |
  d->\f cis b cis d-> cis b cis |
  d\> e fis g ais b cis d |
  g2\ff b,8 ( g4 ) e8 |
  g4-- e-- e'2~ ( |
  e8 cis ) cis ( ais ) e'2~ |
  e4 e, ( cis a? ) |
  cis4\dim b2 d,4 ( |
  cis8 b ) b4 ( bes\> a |
  \mark \default  % Rehearsal 7
  gis ) r4\~ e'2~\pp ( |
  % Page 39
  e8 cis ) cis ( gis ) e'2~ ( |
  e8^\markup { \italic "poco a poco cresc." } d ) d ( b ) eis2~ ( |
  eis?8 dis ) dis ( bis ) fis'2~ ( |
  fis8 e? ) e ( cis ) g'2~ |
  g4 gis2 ( eis4 ) |
  d'2^\markup { \italic "più cresc." } b8 ( gis4 ) eis8 |
  gis4-. eis -. dis'2 |
  bis8 ( a4 ) fis8 a4-. fis-. |
  fis'--\< e-- a2-> |
  fis8\f ( d4 ) b8 cis'4 ( b8 ) r |
  \pageBreak
  r2 a'4.\ff^\markup { \italic "rall." } ( gis8 ) |
  fis4. ( e8 ) d ( b ) a fis |
  % Page 40
  e ( gis ) g4 g ( e ) |
  fis8 ( ais ) ais2 (  fis4 ) |
  fis8 ( b ) cis2 ( d4 ) |
  d8 ( cis ) cis ( a ) cis ( a ) gis fis |
  e4 e' ( dis cis ) |
  r4 e ( dis cis ) |
  a'2. a4~ ( |
  a8 gis ) gis ( e ) dis ( cis ) cis ( gis ) |
  \mark \default
  gis2^\markup { \italic "con tutta forza" } fis4-- gis-- |
  b-- a-- d-- cis-- |
  fis-- g2 b,4 |
  bes4. ( a8 ) f2~ |
  f4 f cis'8( b? ) b4 ( |
  b ) b e8 ( d ) d4 ( |
  d ) r r2\fermata |
  \mark \default % Rehearsal 9
  r4 f,4\f ( e d |
  f^\markup { \italic "dim e rit." } ) d ( cis b ) |
  f'2 ( e8 cis4 ) a8 |
  cis4-. a-. e'2~( |
  e8 a, ) a ( fis cis'2~\pp |
  cis1~^\markup { \italic "a tempo" }) |
  cis |
  cis8^\markup { \italic "cresc. molto" } ( b ) b fis gis' ( fis ) fis d |
  cis'^\markup { \italic "accel." } ( b ) b fis e' ( d ) d b |
  a'2\f fis8\< ( d4 ) b8 |
  d4-- b-- fis'2~\ff ( |
  fis8 d ) d b fis ( d ) d b |
  <cis a'>\sfz r r4 <a a'>8\sfz r r4 |
  <a e' cis'>8\sfz r r4 r2\fermata \bar"|."
}


\header {
  dedication = ""
  title = "Trio"
  instrument = "Violin"
  composer = "Mrs. H.H.A Beach"
}
\score{
  << 
    \new Voice = "one" {
      \key c \major
      \time 3/4
      \clef treble

      \global
      \allegroMelody
    }	
  >>

  \layout {
    \context {
      \Score
      \override SpacingSpanner
        % Not really sure what 1 100 means, but it seems to be giving a nice
        % horizontal spacing
        #'common-shortest-duration = #(ly:make-moment 1 40)
    }
  }
  \header {
      piece = "Allegro"
  }

}
\pageBreak
%{
\score{
  << 
    \new Voice = "one" {
      \key a \major
      \time 6/8
      \clef treble

      \lentoMelody
    }	
  >>

  \layout {

  }

}

%}

\score{
  << 
    \new Voice = "one" {
      \key a \major
      \time 2/2
      \clef treble

      \global
      \allegroConBrioMelody
    }	
  >>

  \layout {
    \context {
      \Score
      \override SpacingSpanner
        % Not really sure what 1 100 means, but it seems to be giving a nice
        % horizontal spacing
        #'common-shortest-duration = #(ly:make-moment 1 40)
    }

  }
  \header {
      piece = "Allegro con brio"
  }

}
