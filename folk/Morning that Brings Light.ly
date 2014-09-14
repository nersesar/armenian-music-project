\version "2.18.2"

%{
Վերնագիր -- Առաւօտ Լուսաբեր
Հեղինակ -- Կոմիտաս
Ժանր -- Ժողովրդական
Տպագրող -- Ներսէս Արամեան
%}

\header {
	title = \markup { \override #'(font-name . "Mshtakan") "Առաւօտ Լուսաբեր"}
	composer = \markup { \override #'(font-name . "Mshtakan") "Կոմիտաս"}
}
 
\layout {
	\context {
		\Lyrics
		\override LyricText #'font-name = #"Mshtakan"
	}
}

global = { \key f \major 
\clef "treble"}

sopranoOneMusic = \relative f' {
	\tempo "Andantino, un poco rubato" 4 = 72
	\time 8/4
	f4 g g g( c) c c2 

	\time 7/4
	c4 c c8^\>( bes a4) bes \! a2 

	\time 8/4
	c4^\< c c c8\!( d c4) bes a8. (g16 f4) 

	\time 7/4
	g a bes a( g) g2 \bar ":|." 
	d'2.^\< (\tuplet 6/4 {c16\! d e f e d^\>} c2.\!)

	\time 8/4
	c2 c4 bes( a) bes2 a4 | 
	c^\< c c c8( d c4\!) bes a8.( g16 f4) |
	
	\time 7/4
	g a bes a( g) g2 \bar "|."	
}

sopranoTwoMusic = \relative f' {
	\time 8/4
	f4 f f f2 g4 a2 

	\time 7/4
	a4 a g( f) e f2 

	\time 8/4
	c'4 c a bes( a) g f2

	\time 7/4
	g4 a g g2 g \bar ":|." 
	bes2.^\<( a4\!^\> g2.\!)

	\time 8/4
	a4( bes) a g2 g a4 | 
	c c a bes( a) g f2 |
	
	\time 7/4
	g4 a g g2 g \bar "|."	
}

altoMusic = \relative f' {
	\time 8/4
	f4 f c d2 e4 f2

	\time 7/4
	f4 f e( f) c f2

	\time 8/4
	a4 g f f2 d4 c2

	\time 7/4
	g'4 f d d2 g \bar ":|."
	f1( e2.)	

	\time 8/4
	f2 f4 c2 d4^\<( e\!) f | 
	a g f f2 d4 c2 |
	
	\time 7/4
	g'4 f d d2 g \bar "|."
}

verseOne = \lyricmode {
	\set stanza = #"1. "
	Ա -- ռա -- ւօտ լու -- սա -- բեր | 
	Հա -- յաս -- տան եր -- կրի, |
	բու -- րա -- ստան ծաղ -- կա -- խիտ |
	կող -- մանցն հիւ -- սի -- սի, |
	Ո_՜հ, |
	ման -- կունք Սի -- օ -- նի, |
	պար ա -- ռեալ ցըն -- ծա -- ցէք |
	ի սոյն խըն -- ճոյ -- ի։ 
	
}

verseTwo = \lyricmode {
	\set stanza = #"2. "
	Նախ -- կին լու -- սա -- ւո -- րիչ, |
	պը -- սակ պան -- ծա -- լի, |
	Թա -- դէ -- ոս Ա -- ռա -- քեալ, |
	ընդ -- է՞ր կաս հե -- ռի։ |
	Ո_՜հ, |
	ման -- կունք Սի -- օ -- նի, |
	պար ա -- ռեալ ցըն -- ծա -- ցէք |
	ի սոյն խըն -- ճոյ -- ի։ 
}

verseOther = \markup {
	\override #'(font-name . "Mshtakan")
	\fill-line{
	"" \column {
	"Ընդարմացեալ բուսոց զուր կենդանութեան,"
	"Հոգւով տըրտմեցելոց բաժակ բերկրութեան,"
	"Դու պարիսպ հաւատոյ, նեղելոց պաշտպան,"
	"Թադէոս Առաքեալ, ընդէ՞ր կաս հեռի։"
	" "
	"Երգնակ աւետաբեր կենաց փըրկութեան,"
	"Շուշան լուսատեսիլ գուշակող գարնան,"
	"Ծուցար մեզ բարեաց շնորհ էական,"
	"Թադէոս Առաքեալ, ընդէ՞ր կաս հեռի։"
	" "
	"Զօրութեամբ Սուրբ Հոգւոյն զաշխարհ արարեր,"
	"Թորգոմեանըն ազգի լոյս մեծ ծագեցեր,"
	"Սուրբ կոյսըն Սանդուխտ յերկինս վերածեր,"
	"Թադէոս Առաքեալ, ընդէ՞ր կաս հեռի։"	
	} ""
	}
}

\score{
\new StaffGroup <<
	\new Staff = "sopranoOne" <<
		\set Staff.instrumentName = #"Soprano I "
		\new Voice = "sopranoOne" {
			\global
			\sopranoOneMusic
		}
	>>

	\new Lyrics \lyricsto "sopranoOne" {
		\verseOne
	}

	\new Staff = "sopranoTwo" <<
	\set Staff.instrumentName = #"Soprano II"
		\new Voice = "sopranoTwo" {
			\global
			\sopranoTwoMusic
		}
	>>

	\new Lyrics \lyricsto "sopranoOne" {
		\verseTwo
	}

	\new Staff = "alto" <<
	\set Staff.instrumentName = #"Alto"
		\new Voice = "alto" {
			\global
			\altoMusic
		}
	>>
>>
\layout {}
\midi {}
}

\verseOther
