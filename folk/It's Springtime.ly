\version "2.18.2"

%{
Վերնագիր -- Գարուն ա
Հեղինակ -- Կոմիտաս
Ժանր -- Ժողովրադական
Տպագրող -- Ներսէս Արամեան
%}

\header{
	title = \markup { \override #'(font-name . "Mshtakan") "Գարուն ա"}
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
	    \override StaffGrouper.staff-staff-spacing.basic-distance = #15
	}
	
	\context {
		\Lyrics
		\override LyricText #'font-name = #"Mshtakan"
	}
}

global = {
	\key g \minor
	\time 3/4
}

twoSopraniMusic = \relative c'' {
	\tempo "Lento" 4 = 40
	c8^\pp^\<\(([ ees--] d[ c--]) c([ ees]) |
	d^\p^\>([ ees--] c4) c8([ ees]) |
	d([ ees--] c4) c-- |
	c2.^\pp\!\) | 
}

twoAltiMusic = \relative c' {
	c4^\pp^\<_\(( d) ees | 
	f2--^\p ees8^\>( f)|
	g4._( bes8) a([ bes]) |
	g2.^\pp \! \)|
}

twoTenoriMusic = \relative c'' {
	c2^\<^\pp\( c4 |
	bes--^\>^\p( a8 bes) c4 |
	c2. |
	d8( ees)^\pp\! c2\) |
}

twoSopraniWords = \lyricmode {
	Գա -- րուն | ա, ձուն | ա ա -- | րել, |
}

twoAltiWords = \twoSopraniWords

twoTenoriWords = \lyricmode {
	Գա -- րուն | ա, ձուն | ա | ա -- րել, |
}

% Երկրորդ մասի ձայները
globalTwo = {
	\key g \minor
	\numericTimeSignature
}

sopraniMusic = \relative c'' {
	\time 3/4
	c8^\mf^\<\(( f) ees8. ( g16^\f^\>) f8-- ( d-.)^\p\)\! |
	c8^\p^\<\(( f) ees8. ( g16^\f^\>) f8-- ( d-.)^\p\)\! \bar "||"
	
	\time 4/4
	c^\p^\<\( ( ees) d4\> \! ees8--^\>( c) c4 \! |
	c1^\pp \)

	\time 3/4
	c8^\mf^\<\(( f) ees8. ( g16^\f^\>) f8-- ( d-.)^\p\)\! |
	c8^\p^\<\(( f) ees8. ( g16^\f^\>) f8-- ( d-.)^\p\)\! \bar "||"
	
	\time 4/4
	c^\p^\<\( ( ees) d4\> \! ees8--^\>( c) c4 \! |
	c1^\pp \) \bar "|."

}

altiMusic = \relative c' {
	\time 3/4
	ees8^\mf^\<\(( f) g4 aes^\f\!\) |
	ees8^\mf^\<\(( f) g4 aes^\f\!\) ||

	\time 4/4
	g1^\p\( |
	g1^\pp\)

	\time 3/4
	ees8^\mf^\<\(( f) g4 aes^\f\!\) |
	ees8^\mf^\<\(( f) g4 aes^\f\!\) ||

	\time 4/4
	g1^\p\( |
	g1^\pp\)
}

tenorOneMusic = \relative c'' {
	\time 3/4
	ees8--^\mf^\>^\(( d ees4--^\>) d8( f)\)^\p \! |
	ees8--^\mf^\>^\(( d ees4--^\>) d8--( bes)\)^\p \! |

	\time 4/4
	g'4--^\pp^\(( f) ees d8( ees--) |
	c1\)

	\time 3/4
	ees8--^\mf^\>^\(( d ees4--^\>) d8( f)\)^\p \! |
	ees8--^\mf^\>^\(( d ees4--^\>) d8--( bes)\)^\p \! |

	\time 4/4
	g'4--^\pp^\(( f) ees d8( ees--) |
	c1\)
}

tenorTwoMusic = \relative c'' {
	\time 3/4
	c4--^\mf^\>( bes2)^\p |
	c4--^\mf^\>( bes2)^\p 

	\time 4/4
	ees8--^\p\(([ c] d--[ bes]) c2^\pp( |
	c1 )\)

	\time 3/4
	c4--^\mf^\>( bes2)^\p |
	c4--^\mf^\>( bes2)^\p 

	\time 4/4
	ees8--^\p\(([ c] d--[ bes]) c2^\pp( |
	c1 )\)
}

bassOneMusic = \relative c' {
	\time 3/4
	aes4^\f^\>\( ( g8 ees8) f4-.\)^\p\! |
	aes4^\f^\>\( ( g8 ees8) f4-.\)^\p\!

	\time 4/4
	ees4^\pp^\<\( ( f8) bes\noBeam a!^\p^\>([ bes]) g4( |
	g1)\)^\pp\!

	\time 3/4
	aes4^\f^\>\( ( g8 ees8) f4-.\)^\p\! |
	aes4^\f^\>\( ( g8 ees8) f4-.\)^\p\!

	\time 4/4
	ees4^\pp^\<\( ( f8) bes\noBeam a!^\p^\>([ bes]) g4( |
	g1)\)^\pp\!
}

bassTwoMusic = \relative c {
	\time 3/4
	r4 ees4--_(^\f bes~^\p |
	bes)) ees(^\f bes^\p)|

	\time 4/4
	c1^\pp\( |
	c1\)

	\time 3/4
	r4 ees4--_(^\f bes~^\p |
	bes)) ees(^\f bes^\p)|

	\time 4/4
	c1^\pp\( |
	c1\)
}

% Երկրորդ մասի բառեր
sopraniWords = \lyricmode {
	վա՜յ, լէ, լէ | վա՜յ, լէ, լէ |
	վա՜յ, լէ, լէ, լէ | լէ՜, |
	վա՜յ, լէ, լէ | վա՜յ, լէ, լէ |
	վա՜յ, լէ, լէ, լէ | լէ՜։ |
}

altiWords = \lyricmode {
	վա՜յ, լէ, լէ | վա՜յ, լէ, լէ |
	լէ՜, | " " |
	վա՜յ, լէ, լէ | վա՜յ, լէ, լէ |
	լէ՜։ | " " |
}

tenorOneWords = \lyricmode {
	վա՜յ, լէ, | վա՜յ, լէ, |
	վա՜յ, լէ, լէ, լէ՜, |
	վա՜յ, լէ, | վա՜յ, լէ, |
	վա՜յ, լէ, լէ, լէ՜։ |
}

tenorTwoWords = \lyricmode {
	վա՜յ, | վա՜յ, |
	վա՜յ, լէ՜, | |
	վա՜յ, | վա՜յ, |
	վա՜յ, լէ՜։ | |
}

bassOneWords = \tenorOneWords

bassTwoWords = \lyricmode {
	վա՜յ, վա՜յ, լէ՜, " " 
	վա՜յ, վա՜յ, լէ՜։
}

verses = \markup {
	\override #'(font-name . "Mshtakan") 
	\fill-line{
	"" \column { 
	"Գարուն ա, ձուն ա արել."
	\override #'(font-name . "Mshtakan") {
	\override #'(font-size . -1) {
	"				Վա՜յ, լէ, լէ, վա՜յ, լէ, լէ,"
	"				Վա՜յ, լէ, լէ, լէ, լէ՜."}}
	"Իմ եարն ինձնից ա սառել։"
	\override #'(font-name . "Mshtakan") {
	\override #'(font-size . -1) {
	"				Ա՜խ, չորնա՛, վա՜խ, ա՜յ եար,"
	"				Չար մարդու լեզուն։"}}
	" "
	"Քամին փըչում ա պաղ-պաղ,"
	"Լերդ ու թոքս անում ա դաղ։"
	" "
	"Եա՜ր, ինձ բեմուրատ արիր,--"
	"Սէրդ ինձնէ զատ արիր։"
	} ""
	}
}

\new StaffGroup <<
	\new Staff = "twoSoprani" <<
		\set Staff.instrumentName = #"2 Soprani "
		\new Voice = "twoSoprani" {
			\global
			\clef "treble"
			\twoSopraniMusic
		}
	>>
	
	\new Lyrics \lyricsto "twoSoprani" {
		\twoSopraniWords
	}

	\new Staff = "twoAlti" <<
	\set Staff.instrumentName = #"2 Alti "
		\new Voice = "twoAlti" {
			\global
			\clef "treble"
			\twoAltiMusic
		}
	>>
	
	\new Lyrics \lyricsto "twoAlti" {
		\twoAltiWords
	}

	\new Staff = "twoTenori" <<
	\set Staff.instrumentName = #"2 Tenori "
		\new Voice = "twoTenori" {
			\global
			\clef "treble"
			\twoTenoriMusic
		}
	>>

	\new Lyrics \lyricsto "twoTenori"{
		\twoTenoriWords
	}
>>

\new StaffGroup <<
	\new Staff = "soprani" <<
	\set Staff.instrumentName = #"Soprani "
		\new Voice = "soprani" {
			\globalTwo
			\clef "treble"
			\sopraniMusic
		}
	>>

	\new Lyrics \lyricsto "soprani" {
		\sopraniWords
	}

	\new Staff = "alti" <<
	\set Staff.instrumentName = #"Alti "
		\new Voice = "alti" {
			\globalTwo
			\clef "treble"
			\altiMusic
		}
	>>

	\new Lyrics \lyricsto "alti" {
		\altiWords
	}

\new StaffGroup = "tenori" \with {
	systemStartDelimiter = #'SystemStartSquare
}<<
	
	\new Staff = "tenorOne" <<
	\set Staff.instrumentName = #"Tenori I "
		\new Voice = "tenorOne" {
			\globalTwo
			\clef "treble"
			\tenorOneMusic
		}
	>>

	\new Lyrics \lyricsto "tenorOne" {
		\tenorOneWords
	}

	\new Staff = "tenorTwo" <<
	\set Staff.instrumentName = #"Tenori II "
		\new Voice = "tenorTwo" {
			\globalTwo
			\clef "treble"
			\tenorTwoMusic
		}
	>>
	
	\new Lyrics \lyricsto "tenorTwo" {
		\tenorTwoWords
	}
>>

\new StaffGroup = "bassi" \with {
	systemStartDelimiter = #'SystemStartSquare
} 	<<
	\new Staff = "bassOne" <<
	\set Staff.instrumentName = #"Bassi I "
		\new Voice = "bassOne" {
			\globalTwo
			\clef "bass"
			\bassOneMusic
		}
	>>

	\new Lyrics \lyricsto "bassOne" {
		\bassOneWords
	}

	\new Staff = "bassTwo" <<
	\set Staff.instrumentName = #"Bassi II "
		\new Voice = "bassTwo" {
			\globalTwo
			\clef "bass"
			\bassTwoMusic
		}
	>>

	\new Lyrics \lyricsto "bassTwo" {
		\bassTwoWords
	}
	>>
>>



\verses

