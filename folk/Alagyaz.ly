\version "2.18.2"

%{
Վերնագիր -- Ալագեազ
Հեղինակ -- Կոմիտաս
Ժանր -- Ժողովրադական
Տպագրող -- Ներսէս Արամեան
%}

\header{
	title = \markup { \override #'(font-name . "Mshtakan") "Ալագեազ"}
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
	\time 3/4
}

sopraniAltiMusic = \relative f' {
	f4.( c8) f([ g]) | % Ա -- լա --
	a2 a8([ c]) | % գեազ սարն
	bes([ a bes c]) a4 | % ամ -- պել 
	a8([ g] a4) a8([ c]) | % ա, վա՜յ,
	bes( a bes c) a4 | % լէ՜, լէ՜,	
	a4( g8[ f]) f([ a]) | % լէ՜, վա՜յ,
	g( f g a) f( e) | % լէ՜, լէ՜,
	f2. | % լէ՜,
	\bar ":.|.:"
	f4.( c8) f([ g]) | % աղ -- բեր
	a2 bes8( a) | % իմ ձին
	g4( a) g8( f) | % թամ -- բել
	f2 bes8.([ d16]) | % ա։ Իմ
	c8( bes4 c8) a4 | % մայ -- րիկ
	a4( g8 f) f([ a]) | % ջան, իմ
	g( f g a) f([ e]) | % մայ -րիկ
	f2. | % ջան
	\bar ":|."
} 

tenoriMusic = \relative f' {
	a2 a8( bes) | % Ա -- լա --
	c2 c4 | % գեազ սարն
	d2 c8( b) | % ամ -- պել
	c2 c4 | % ա, վա՜յ,
	d( e) f | % լէ՜, լէ՜,
	c2.( | % լէ՜,
	c2.) | % 
	c2. % լէ՜,
	c2 c4 | % աղ -- բեր
	c2 c4 | % իր ձին 
	b2 c4 | % թամ -- բել
	a2 bes4 | % ա։ Իմ
	bes( c) d | % մայ -- րիկ
	c2.( | % ջան,
	c2.) | %
	c2. | % ջան։
}

bassiMusic = \relative f {
	\clef "bass"
	f2 f4 | % Ա -- լա --
	f8( c d e) f4 | % գեազ սարն
	f2 f4 | % ամ -- պել
	f2.( | % ա,
	f2.) | %
	f4( g) a | % լէ՜, վա՜յ, 
	bes8( a g f) g([ a]) | % լէ՜, լէ՜,
	f2. | % լէ՜,
	f4( g) a | % աղ -- բեր
	f8([ e] b4) c | % իր ձին
	d2 e8( c) | % թամ -- բել
	f2.( | % ա։
	f2.) | %
	f4( g) a | % Ջան, իմ
	bes8( a g f) g([ a]) | % մայ -- րիկ
	f2. | % ջան։
}

sopraniAltiWords = \lyricmode {
	Ա -- լա -- գեազ սարն ամ -- պել ա,
	վա՜յ, լէ՜, լէ՜, լէ՜, վա՜յ, լէ՜, լէ՜, լէ՜։
	աղ -- բեր իր ձին թամ -- բել ա։
	Իմ մայ -- րիկ ջան, իմ մայ -- րիկ ջան։
}

tenoriWords = \lyricmode {
	Ա -- լա -- գեազ սարն ամ -- պել ա,
	վա՜յ, լէ՜, լէ՜, լէ՜, լէ՜, 
	աղ -- բեր իր ձին թամ -- բել ա։
	Իմ մայ -- րիկ ջան, ջան։
}

bassiWords = \lyricmode {
	Ա -- լա -- գեազ սարն ամ -- պել ա,
	լէ՜, վա՜յ, լէ՜, լէ՜, լէ՜, 
	աղ -- բեր իր ձին թամ -- բել ա։
	Ջան, իմ մայ -- րիկ, ջան։
}

verses = \markup {
	\override #'(font-name . "Mshtakan") 
	\fill-line{
	"" \column {
	"Ալագեազ սարն ամպել ա, "
	\override #'(font-name . "Mshtakan") {
	\override #'(font-size . -1) {
	"				Վա՜յ, լէ՜, լէ, լէ՜, լէ, լէ՜, լէ, լէ՜,"}}
	"Աղբեր իր ձին թամբել ա։ "
	\override #'(font-name . "Mshtakan") {
	\override #'(font-size . -1) {
	"				Իմ մա՜յրիկ, ջա՜ն, իմ մայրիկ, ջա՜ն։"}}
	" "
	"Աղբեր իր ձին թամբել ա, "
	"Եարոջ դըռնեն անցել ա։"
	" "
	"Եարոջ դըռնեն անցել ա,"
	"Ելէ դաշտը՝ խաղցել ա։"
	} ""
	\column { " " 
	"Ելէ դաշտը՝ խաղցել ա։"
	"Անձրեւ եկէ, թըրջել ա։"
	" "
	"Անձրեւ եկէ, թըրջել ա,"
	"Արեւ զարկէ՝ չորցել ա։"
	" "
	"Արեւ զարկէ՝ չորցել ա,"
	"Քան կարմիր վարդ բացել ա։"
	} ""
	}
}


\score {
\new StaffGroup <<
	\new Staff = "sopraniAlti" <<
		\set Staff.instrumentName = \markup {\column{"Soprani" "   Alti"}}
		\new Voice = "sopraniAlti" {
			\global
			\tempo "Clara voce" 4 = 63
			\sopraniAltiMusic
		}
	>>
	
	\new Lyrics \lyricsto "sopraniAlti" {
		\sopraniAltiWords
	}
	
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

	\new Lyrics \lyricsto "bassi" {
		\bassiWords
	}
>>
\layout {}
\midi {}
}

\verses