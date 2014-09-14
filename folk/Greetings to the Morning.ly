\version "2.18.2"

%{
Վերնագիր -- Առաւօտուն Բարի Լուս
Հեղինակ -- Կոմիտաս
Ժանր -- Ժողովրադական
Տպագրող -- Ներսէս Արամեան
%}

\header{
	title = \markup { \override #'(font-name . "Mshtakan") "Առաւօտուն Բարի Լուս"}
	composer = \markup { \override #'(font-name . "Mshtakan") "Կոմիտաս"}
}

\paper {
	top-margin = 0.5\in
	bottom-margin = 0.75\in
}

global = {
	\key g \major
	\time 6/4
}



divisioMaior = {
  	\once \override BreathingSign.stencil = #ly:breathing-sign::divisio-maior
  	\once \override BreathingSign.Y-offset = #0
  	\breathe
	\bar ""
}

tenoresoloMusic = \relative g' {
	r4 r8 g8^\mf\( a4 a d2 \divisioMaior % Առաւօտուն
	d e4 d16([ e c8] d2)\) | % բարի լուս
	r4 r8 d8\( e4 c d2 \divisioMaior % Աստուած պահէ
	d2 e4 d16([ e c8] d2)\) | % ամէնուս
	r4 r8 g,8^\p^\<\( a4 b c4.( d8) \divisioMaior % թող դո՛ւս գայ լուս
	d2 e8->\!( c) c4 \breathe d16^\p([ e c8^\markup{con amore}] d4) | % թշնամուս, լո --
	c4.( b8) c4 b \breathe c16([ d b8] c8.[ d16]) \divisioMaior % րիկ, լորիկ, լո՜--
	b4.( a8) a16([ c8 d16]) b16([ c a8~] a2)\) | % րիկ, լորիկ,
	r4^\markup{con entusiasmo} r8 a8_\( e'--->([ a,]) a4 a2 \divisioMaior % թող դո՛ւս գայ լուս
	a2 b8--( g) g4\) r8 d'8 d4 | % թըշ -- նա -- մուս։ Լո՜րիկ
	r4^\markup{dolcissimo} r8 c8\( d4 d8.( g16) f( e d4.)\) \divisioMaior % լո՜ր իմ, լո՜րիկ,
	r4 r8 c8\( d4 c4^\>( b8 c)\! d4\) | % սիրուն լորիկ,
	r4 r8 b8\( c4 b a2~ \divisioMaior % լո՜րիկ, լ՜որիկ,
	a4\) r8 d8\( c4 b a8^\markup{assoluto}([ b] c[ d])\) | % լո՜ր իմ, լո՜րիկ,
	r4 r8 d8\( c4 b a2 \divisioMaior % լո՜ր իմ, լուս լո՜--
	a1. \) | % րիկ։
	R1*3/2 \divisioMaior 
	r2. r4 a'^\pp\( e^\markup{dolce} \divisioMaior % Լո՛ր իմ, 
	e1.\) | % լո՜ր,
	\tempo "Jubiloso" 4 = 168
	r2. e4^\p\( a e\) \divisioMaior % իմ լո՛րիկ,
	R1*3/2 |
	\repeat volta 4 { 
	r2. e4^\p\( a e\) \divisioMaior % իմ լո՛րիկ,
	R1*3/2 }
	r4 g^\mf^\>\( e d\)\! r2 | % լո՛ր իմ, լո՜ր, 
	r4 g^\>\( e d\)\! r2 | % լո՛ր իմ, լո՜ր, 
	r4 g^\>\( e d2.\)\! | % լո՛ր իմ, լո՜ր, 
	r4 r8 c8^\f\( d4^\markup{con energia e legato} d8.([ g16]) f8( e d4~ \divisioMaior % լո՛ր իմ, լո՜րիկ,
	d4.) c8 d4 c( b8 c) d4~ \divisioMaior % սիրուն լորիկ,
	d4. b8 c4 b4 a2^~ \divisioMaior % լորիկ, լորիկ
	a8-. \) r8 r8 d8\( c4 b a8^\p([ b] c^\markup{assoluto}[ d])\) \divisioMaior % լոր իմ, լո՜րիկ,
	r4 r8 d8^\mf^\>\( c4 b a2 \divisioMaior % լոր իմ, լուս լո --
	a8-.\) r8^\p\! r2 r2. % րիկ։
	\bar "|."
}

sopraniMusic = \relative g''{
	R1*3/2 \divisioMaior 
	R1*3/2 |
	d1.~^\p\( \divisioMaior % Լուս
	d1.~ | 
	d1.~ \divisioMaior 
	d1.\) |
	e1.~\( \divisioMaior % լո՜ --
	e1.~ |
	e1.~ \divisioMaior
	e1.\) |
	d1.~\( \divisioMaior % րիկ,
	d1.~ |
	d1.~ \divisioMaior
	d1.~ |
	d8-.\) r8 r8 e,8^\pp_\( fis4 g a2 \divisioMaior % լոր իմ, լուս լո՜--
	a1.\) % րիկ։
	g'4^\markup{Solo " "\dynamic f " "\roman brillante}\( g( fis) g g( fis) \divisioMaior % Հազար երկնէկ
	g--( e) e e2.~ \divisioMaior % էն աւուր՝
	e1.( | % 
	a,8-.^\pp)\) r8 r8^\markup{Tutti " "\dynamic f} c8\( d4 e e2 \divisioMaior % տաւուլ-զուռնայ
	e8( f->) d2 g8^>( fis) e2\! \) | % չալեցուցին
	\repeat volta 4 {
		r4 r8 c8^\f\( d4 e e2 \divisioMaior % կանաչ կարմիր
		e8( f->) d2 g8^\>( fis) e2\!\) % հագեցուցին,
	}
	e8\(( f) d2 g8^\>( fis e2)\!\) \breathe | % Տույ, տույ, տույ,
	e8\(( f--) d2 g8^\>( fis e2)\!\) \breathe | % տույ, տույ, տույ,
	e8\(( f--) d2 d8([ g--] f^\>[ e] d4~)\! | % տույ, տույ, տույ
	d2\) b8^\<\(( c) d2.~^\mf\! \divisioMaior % տույ, տույ,
	d1.~^\markup{poco a poco perdendo} \divisioMaior 
	d1.~ \divisioMaior
	d1.~ \divisioMaior
	d8-.\) r8 r8 e,8^\pp\( fis4 g a2-- \divisioMaior % լոր իմ, լուս լո --
	a8-.\) r8 r2 r2. % րիկ։
	\bar "|."
}

altiMusic = \relative g' {
	\repeat unfold 4 {R1*3/2 \divisioMaior R1*3/2 |}
	a1.~ ^\p \divisioMaior % Լուս,
	\repeat unfold 3 {a1.~ | a1.~ \divisioMaior }
	a1. |
	e1.~^\p \divisioMaior
	\repeat unfold 3 {e1.~ \divisioMaior}
	e2.( a8-.^\pp) r8 r4 e8^\f\(( fis) |
	\repeat volta 4 { 
	g8^\markup{>}( e~) e2^\p~ e2.~ \divisioMaior
	e2.( a8-.^\pp)\) r8 r4 e8^\<\(( fis)} 
	\repeat unfold 3 { g2.~^\f g2\) e8^\<\(( fis)\! |}
	fis8^\<( g)\! a2~^\mf\) a2.~^\markup{poco a poco perdendo} \divisioMaior
	\repeat unfold 3 {a1.~ \divisioMaior }
	a8_.^\pp r8 r2 r2. \divisioMaior
	R1*3/2 \bar "|."
}

tenoriMusic = \relative g' {
	\repeat unfold 7 {R1*3/2 \divisioMaior R1*3/2 |}
	R1*3/2 \divisioMaior
	a1.~^\p | % Լո՜ր։
	\repeat unfold 3 {a1.~ \divisioMaior}
	a8-. r8 r8 a8^\f_\( b4 c8( d--->) c2~^\< \divisioMaior % Տաւուլ-զուռնայ
	c4->\! d8^\p([ e]) c([ b]) a-!\) r g'^\p\(( f e d) | % տույ, տույ, տույ, տույ
	\repeat volta 4 {
		c-!\) r8 r a\( b4 c8( d--->) c2~^\< \divisioMaior % պամ, կանաչ կարմիր,
		c4->\! d8^\p([ e]) c([ b]) a-!\) r g'^\p\(( f e d) | % տույ, տույ, տույ, տույ,
	}
	c-!\) r d-! r r4 a8\(( b) c2~^\< | % պամ, պամ, տույ, տույ
	c4--\! d8-.\) r r4 a8\(( b) c2~^\< | % պամ, տույ, տույ,
	c4--\! d8-.\) r r4 g,8^\<([ a]) b([ c]) d-.\! r | % պամ, տույ, տույ, տույ,
	a8-. r r2 r2. \divisioMaior % պամ։
	\repeat unfold 4 { R1*3/2 \divisioMaior}
	R1*3/2 \bar "|."
}

bassiOneMusic = \relative g,{
	\clef bass
	\repeat unfold 8 {R1*3/2 \divisioMaior R1*3/2 |}
	a1.~^\p \divisioMaior % Լոր
	a1.~ \divisioMaior
	a1._\( \divisioMaior
	e'8-!\)^\f r8 r a a-.\noBeam r a-. r a-. r r a \divisioMaior
	a-! r r a a-.\noBeam r a-. r a2---> |
	\repeat volta 4 {
		e8-!^\f r r a a-.\noBeam r a-. r a-. r r a \divisioMaior
		a-! r r a a-.\noBeam r a-. r a2---> |
	}
	\repeat unfold 3 {c8-. r r g g-.\noBeam r r4 g8-. r g-. r |}
	a-. r r a a-.\noBeam r a-. r a-. r r d->\( \divisioMaior
	c([ b]) a2~ a\) r8 e \divisioMaior
	fis r g-. r a-. r r2. \divisioMaior
	g8^\p a-.\noBeam r2 r2. \divisioMaior
	g8^\pp a-.\noBeam r2 r2. \divisioMaior
	R1*3/2
}

bassiTwoMusic = \relative g,{
	\clef bass
	\repeat unfold 8 {R1*3/2 \divisioMaior R1*3/2 |}
	a1.~^\p \divisioMaior
	a1.~ \divisioMaior
	a1.~ \divisioMaior
	a8-!^\f r r a a-.\noBeam r a-. r a-. r a-. r \divisioMaior
	a8-! r r a a-.\noBeam r a-. r a-. r r4 |
	a8-!^\f r r a a-.\noBeam r a-. r a-. r a-. r \divisioMaior
	a8-! r r a a-.\noBeam r a-. r a-. r r4 |
	\repeat unfold 3 { a4->\( b c d-> c2\) | }
	d8-. r r d d-.\noBeam r b\(( c)^\< e2~ \divisioMaior
	e2.\) f8->\!\(( e^\markup{\dynamic f}) d2~^\< \divisioMaior
	d2. e8-!\!^\markup{\dynamic f}\) r r e e-.\noBeam r \divisioMaior
	e->( a,-.\noBeam) r a a-.\noBeam r a-. r a-. r r4 \divisioMaior
	c8--^\p( a-.\noBeam) r a a-.\noBeam r a-. r a-. r r a^\pp \divisioMaior
	a-. r r2 r2. 
	\bar "|."
	
}


tenoresoloWords = \lyricmode {
	Ա -- ռա -- ւօ -- տուն  բա -- րի լուս, 
	Աստ -- ուած պա -- հէ  ա -- մէն -- ուս, 
	թող դո՛ւս գայ լուս  թըշ -- նա -- մուս, լո՜-- 
	րիկ, լո՜ -- րիկ, լո՜ --  րիկ, լո -- րիկ, 	
	թող դո՛ւս գայ լուս  թըշ -- նա -- մուս։ Լո՜ -- րիկ,
	լո՛ր իմ, լո՜-- րիկ, սի -- րուն լո՜ -- րիկ,
	լո՛ -- րիկ, լո՜ -- րիկ, լո՛ր իմ, լո՜ -- րիկ,
	լո՛ր իմ, լուս լո՜ -- րիկ։
	Լո՛ր իմ, լո՜ր,
	իմ լո՛ -- րիկ,
	իմ լո՛ -- րիկ,
	լո՛ր իմ, լո՜ր,
	լո՛ր իմ, լո՜ր,
	լո՛ր իմ, լո՜ր,
	լո՛ր իմ, լո՜ր -- իկ,
	սի -- րուն լո՜ -- րիկ,
	լո՛ -- րիկ, լո՜ -- րիկ,
	լո՛ր իմ, լո՜ -- րիկ,
	լո՛ր իմ, լուս լո՜ -- րիկ։
}

sopraniWords = \lyricmode {
	Լուս լո՜ -- րիկ, լո՛ր իմ, լուս լո՜ -- րիկ։
	Հա -- զա՜ր եր -- նէկ է՛ն ա -- ւուր՝
	տա -- ւուլ զուռ -- նայ չա -- լե -- ցու -- ցին, 
	<<
		{ կա -- նաչ կար -- միր հա -- գե -- ցու -- ցին, }
		\new Lyrics = "verseTwo" \with {alignBelowContext = #"sopraniLyrics"}
			{ \set associatedVoice = "soprani" տա -- րան ժա -- մը կայ -- նե -- ցու -- ցին,}
		\new Lyrics = "verseThree" \with {alignBelowContext = #"verseTwo"}
			{ \set associatedVoice = "soprani" ա -- ւե -- տա -- րան կար -- դա -- ցու -- ցին,}
		\new Lyrics \with {alignBelowContext = #"verseThree"}
			{ \set associatedVoice = "soprani" ձե -- ռը ձե -- ռին տը -- ւե -- ցու -- ցին։ }
	>>
	Տո՛ւյ, տո՜ւյ, տո՜ւյ, 
	տո՜ւյ, տո՜ւյ, տո՜ւյ,
	տո՜ւյ, տո՜ւյ, տո՜ւյ,
	տո՜ւյ, տո՜ւյ, 
	լո՛ր իմ, լուս լո՜ -- րիկ։
}

altiWords = \lyricmode {
	Լուս լո՜ր,
	տո՜ւյ, տո՜ւյ, 
	տո՛ւյ, տո՜ւյ, 
	տո՛ւյ, տո՜ւյ,
	տո՛ւյ, տո՜ւյ,
	տո՛ւյ, տո՜ւյ,
	տո՜ւյ։
}

tenoriWords = \lyricmode {
	Լո՜ր։
	Տա -- ւուլ զուռ -- նայ, տո՛ւյ, տո՛ւյ, տո՛ւյ, տո՜ւյ, 
	<<
		{ " պամ," կա -- նաչ կար -- միր, տո՛ւյ, տո՛ւյ, տո՛ւյ, տո՜ւյ, }
		\new Lyrics = "verseTwo" \with {alignBelowContext = #"tenoriLyrics"}
			{ \set associatedVoice = "tenori" " պամ," տա -- րան ժա -- մը,  տո՛ւյ, տո՛ւյ, տո՛ւյ, տո՜ւյ, }
		\new Lyrics = "verseThree" \with {alignBelowContext = #"verseTwo"}
			{ \set associatedVoice = "tenori" " պամ," ա -- ւե -- տա -- րան, տո՛ւյ, տո՛ւյ, տո՛ւյ, տո՜ւյ, }
		\new Lyrics \with {alignBelowContext = #"verseThree"}
			{ \set associatedVoice = "tenori" " պամ," ձե -- ռը ձե -- ռին, տո՛ւյ, տո՛ւյ, տո՛ւյ, տո՜ւյ, }
	>>
	պա՛մ, պա՛մ, տո՛ւյ, տո՜ւյ,
	պա՛մ, տո՛ւյ, տո՜ւյ,
	պա՛մ, տո՛ւյ, տո՛ւյ, տո՛ւյ,
	պա՛մ։
}

bassiOneWords = \lyricmode {
	Լոր, 
	պա՛մ, պա՛, պա՛մ, պա՛մ, պա՛մ, պա՛, 
	պա՛մ, պա՛, պա՛մ, պա՛մ, պա՛մմ...
	պա՛մ, պա՛, պա՛մ, պա՛մ, պա՛մ, պա՛, 
	"      պա՛մ," պա՛, պա՛մ, պա՛մ, պա՛մմ...
	պա՛մ, պա՛, պա՛մ, պա՛մ, պա՛մ, 
	պա՛մ, պա՛, պա՛մ, պա՛մ, պա՛մ, 
	պա՛մ, պա՛, պա՛մ, պա՛մ, պա՛մ, 
	պա՛մ, պա՛, պա՛մ, պա՛մ, պա՛մ, պա՛, տո՜ւյ, տո՜ւյ,
	պա՛, պա՛մ, պա՛մ, պա՛մ,
	պա՛, պա՛մ,
	պա՛, պա՛մ։
}


bassiTwoWords = \lyricmode {
	Լոր,
	պա՛մ, պա՛, պա՛մ, պա՛մ, պա՛մ, պա՛մ,
	պա՛մ, պա՛, պա՛մ, պա՛մ, պա՛մ,
	պա՛մ, պա՛, պա՛մ, պա՛մ, պա՛մ, պա՛մ,
	պա՛մ, պա՛, պա՛մ, պա՛մ, պա՛մ,
	պա՛մմ, պա՛մմ, պա՛մմ, պա՛մմ, պա՛մմ, 
	պա՛մմ, պա՛մմ, պա՛մմ, պա՛մմ, պա՛մմ,
	պա՛մմ, պա՛մմ, պա՛մմ, պա՛մմ, պա՛մմ,
	պա՛մ, պա՛, պա՛մ, տո՜ւյ, տո՜ւյ,
	տո՜ւյ, տո՜ւյ,
	պա՛մ, պա՛, պա՛մ,
	պա՛, պա՛մ, պա՛, պա՛մ, պա՛մ, պա՛մ,
	պա՛, պա՛մ, պա՛, պա՛մ, պա՛մ, պա՛մ,
	պա՛, պա՛մ։
}



\score {
	\layout {
		ragged-right = ##f
		\context {
			\StaffGroup
	    	\override StaffGrouper.staff-staff-spacing.basic-distance = #10
		}
	
		\context {
			\Lyrics
			\override LyricText #'font-name = #"Mshtakan"
		}
	}

	\midi {
		\context {
			\Lyrics
			\remove "Lyric_performer"
		}
	}

<<
	\new Staff = "tenoresolo" <<
		\set Staff.instrumentName = "Tenore Solo"
		\set Staff.midiInstrument = #"oboe"
		\new Voice = "tenoresolo" {
			\global
			\tempo "Giocoso" 4 = 138
			\tenoresoloMusic
		}
	>>
	
	\new Lyrics \lyricsto "tenoresolo" {
		\tenoresoloWords
	}

	\new ChoirStaff <<
		\new Staff = "soprani" <<
			\set Staff.instrumentName = \markup {Soprani}
			\set Staff.midiInstrument = #"flute"
			\new Voice = "soprani" {
				\global
				\sopraniMusic
			}
		>>
		
		\new Lyrics = "sopraniLyrics" \lyricsto "soprani" {
			\sopraniWords
		}
		
		\new Staff = "alti" <<
			\set Staff.instrumentName = \markup {Alti}
			\set Staff.midiInstrument = #"flute"
			\new Voice = "alti" {
				\global
				\altiMusic
			}
		>>
		
		\new Lyrics \lyricsto "alti" {
			\altiWords
		}

		\new Staff = "tenori" <<
			\set Staff.instrumentName = \markup {Tenori}
			\set Staff.midiInstrument = #"oboe"
			\new Voice = "tenori" {
				\global
				\tenoriMusic
			}
		>>
		
		\new Lyrics = "tenoriLyrics" \lyricsto "tenori" {
			\tenoriWords
		}

		\new Staff = "bassiOne" <<
			\set Staff.instrumentName = \markup {Bassi I}
			\set Staff.midiInstrument = #"bassoon"
			\new Voice = "bassiOne" {
				\global
				\bassiOneMusic
			}
		>>

		\new Lyrics \lyricsto "bassiOne" {
			\bassiOneWords
		}

		\new Staff = "bassiTwo" <<
			\set Staff.instrumentName = \markup {Bassi II}
			\set Staff.midiInstrument = #"bassoon"
			\new Voice = "bassiTwo" {
				\global
				\bassiTwoMusic
			}
		>>

		\new Lyrics \lyricsto "bassiTwo" {
			\bassiTwoWords
		}
	>>
>>}
