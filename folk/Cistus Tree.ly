\version "2.18.2"

%{
Վերնագիր -- Խնկի Ծառ
Հեղինակ -- Կոմիտաս
Ժանր -- Ժողովրադական
Տպագրող -- Ներսէս Արամեան
%}

\header{
	title = \markup { \override #'(font-name . "Mshtakan") "Խնկի Ծառ"}
	composer = \markup { \override #'(font-name . "Mshtakan") "Կոմիտաս"}
}

\paper {
	top-margin = 0.5\in
	bottom-margin = 0.75\in
}

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

global = {
	\key f \major
	\time 6/8
}

sopraniMusic = \relative f' {
	f4 f8 g\noBeam a4 | % Մեր դը -- ռա -- նը
	a a8 a4( c8) | % խըն -- կի ծառ,
	g a([ f]) a( g4) | % Գիւ -- լո՜ւմ ջան,
	f f8 f\noBeam a8([ f]) | % ձեր դը -- ռա -- նը
	a([ g]) a g4( a8) | % խըն -- կի ծառ,
	f8 g([ e]) g( f4) | % Գիւ -- լո՜ւմ ջան։
	\bar "|."
}

altiMusic = \relative f' {
	f4 f8 f8\noBeam f4 |
	f4 f8 e([ f g]) |
	e f([ d]) e4. |
	d4 d8 d8\noBeam d4 |
	f8([ e]) d d\noBeam( e4) |
	f8 d([ e]) c4. |
}

tenoriMusic = \relative f'' {
	c4 c8 c8\noBeam c4 | % Մեր դը -- ռա -- նը
	c c8 c4. | % խըն -- կի ծառ,
	bes16( c) a8([ bes]) g8( c4) | % Գիւ -- լո՜ւմ ջան,
	a4 a8 a8\noBeam a4 | % ձեր դը -- ռա -- նը
	a a8 bes8( g4) | % խըն -- կի ծառ,
	c16( d) bes8([ c]) a4. | % Գիւ -- լո՜ւմ ջան։
} 

bassiMusic = \relative f {
	\clef "bass"
	f4 f8 f8\noBeam f4 |
	f8([ e]) d c([ d e]) |
	c8 c4 c4. |
	d4 d8 d8\noBeam d4 |
	d8([ e]) f g4( c8) |
	a8 bes([ g]) f4. |
}

sopraniWords = \lyricmode {
	Մեր դը -- ռա -- նը խըն -- կի ծառ, Գիւ -- լո՜ւմ ջան, 
	ձեր դը -- ռա -- նը խըն -- կի ծառ, Գիւ -- լո՜ւմ ջան։
}

tenoriWords = \sopraniWords

verses = \markup {
	\override #'(font-name . "Mshtakan") 
	\fill-line{
	"" \column { " " " " " "
	"Մեր դըռանը խընկի ծառ, "
	\override #'(font-name . "Mshtakan") {
	\override #'(font-size . -1) {
	"				Գիւլո՜ւմ ջան."}}
	"Ձեր դըռանը խնկի ծառ, "
	\override #'(font-name . "Mshtakan") {
	\override #'(font-size . -1) {
	"				Գիւլո՜ւմ ջան."}}
	"Խնկենին ա բերել բար, "
	\override #'(font-name . "Mshtakan") {
	\override #'(font-size . -1) {
	"				Գիւլո՜ւմ ջան."}}
	"Իմ խորոտիկ, պըզտիկ եար։ "
	\override #'(font-name . "Mshtakan") {
	\override #'(font-size . -1) {
	"				Գիւլո՜ւմ ջան։"}}
	} ""
	\column {
	"Մեր դըռանը խընկի ծառ,"
	"Նախշուն բըլբուլ վըրեն թառ."
	"Երթար ու գար, շորոր տար,"
	"Սիրուն եարին օրոր տար։"
	" "
	"Մեր դըռանը խընկի ծառ,"
	"Մարջան բըլբուլ վըրեն թառ."
	"Գընար ու գար շըուին տար,"
	"Անուշ եարի թեւին տար։"
	" "
	"Մեր դըռանը խընկի ծառ,"
	"Ոսկի բըլբուլ վըրեն թառ."
	"Կարմիր խընձոր անել տար,"
	"Ալուան ծաղիկ տանել տար։"	
	} ""
	}
}

\score {
\new StaffGroup <<
	\new Staff = "soprani" <<
		\set Staff.instrumentName = \markup {Soprani}
		\new Voice = "soprani" {
			\global
			\tempo "Gaio" 4. = 63
			\sopraniMusic
		}
	>>
	
	\new Lyrics \lyricsto "soprani" {
		\sopraniWords
	}

	\new Staff = "alti" <<
		\set Staff.instrumentName = \markup {Alti}
		\new Voice = "alti" {
			\global
			\altiMusic
		}
	>>

	
	\new Staff = "tenori" <<
		\set Staff.instrumentName = \markup {Tenori}
		\new Voice = "tenori" {
			\global
			\tenoriMusic
		}
	>>

	\new Lyrics \lyricsto "tenori" {
		\tenoriWords
	}
	
	\new Staff = "bassi" <<
		\set Staff.instrumentName = \markup {Bassi}
		\new Voice = "bassi" {
			\global
			\bassiMusic
		}
	>>
>>
\layout {}
\midi {}
}

\verses