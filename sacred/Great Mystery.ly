\version "2.18.2"

%{
Վերնագիր -- Խորհուրդ Մեծ
Հեղինակ -- Մովսէս Խորենացի
Ժանր -- Հոգեւոր
Տպագրող -- Ներսէս Արամեան
%}

\header{
	title = \markup { \override #'(font-name . "Mshtakan") "Խորհուրդ Մեծ"}
	composer = \markup { \override #'(font-name . "Mshtakan") "Մովսէս Խորենացի"}
}

\layout {
	\context{
		\Lyrics
		\override LyricText #'font-name = #"Mshtakan"
	}
	\context{
		\Staff
		\remove "Time_signature_engraver"
		\remove "Bar_engraver"
	}
}

divisioMaxima = {
  \once \override BreathingSign.stencil = #ly:breathing-sign::divisio-maxima
  \once \override BreathingSign.Y-offset = #0
  \breathe
}

finalis = {
  \once \override BreathingSign.stencil = #ly:breathing-sign::finalis
  \once \override BreathingSign.Y-offset = #0
  \breathe
}

segno = \markup{ 
		\override #'(font-encoding . fetaScript)
		\override #'(font-size . -1)
		\lookup #"scripts.segno" }

global = {
	\key f \major
	\slurDown
	\stemUp
}


chantAyb = \relative f' {
	f8\noBeam % Խոր --
	bes % հուրդ
	bes4( a16[ g] a2) % մեծ
	\acciaccatura c8 bes16([ a bes c] bes8[ a]) % եւ
	g([ \acciaccatura a g16 f] g8[ a]) % սքան --
	bes2 % չե --
	bes8([ \acciaccatura c8 bes16 a] bes8^[ c] bes4 a) % լի
	g2 % որ
	a16([ bes a g] a8[ bes] a[ \acciaccatura c bes16 a] g8[ a]) % յայսմ
	\acciaccatura bes8 a16([ g f g] f4) % ա --
	\acciaccatura f16 bes2 % ւուր
	bes8([ a] \acciaccatura bes a[ g]) % յայտ --
	g([ f16 e] bes'16.[ a32 g16 a]) % նե --
	g2 % ցաւ
	f4.( a8) % հո --
	g2 % վիւքն
	g8([ \acciaccatura a g16 f] g8[ a]) % եր --
	bes8([ \acciaccatura d c] bes[ a]) % գեն
	g4( f) % ընդ
	g4( a bes c) % հրեշ --
	a4.( c8 a[ \acciaccatura c bes] a[ g]) % տակս
	g2 % տան
	a16([ bes a g] a8[ bes] a[ \acciaccatura c bes16 a] g8[ a]) % ա --
	\acciaccatura bes8 a16([ g f g] f4) % ւե --
	\acciaccatura f8 bes2 % տիս
	bes8([ a] \acciaccatura bes a[ g]) % աշ --
	\acciaccatura a8 g16([ f e f] g8[ f] g4. f8) % խար --
	d'16.([ c32 bes16 c] bes4 a bes8[ \acciaccatura c bes16 a] g2) % հի
	\finalis	
}

chantBen = \relative f' {
	\acciaccatura f8 c'8._([ bes16] a8[ c] bes[ c] bes[ a]) % Ծնաւ
	g4.( f8) % նոր
	d'8([ c] bes[ a]) % Ար --
	bes([ \acciaccatura c bes16 a] bes8[ c] bes4 a) % քայ
	g2 % ի
	a16([ bes a g] a8[ bes] a[ \acciaccatura c bes16 a] g8[ a]) % Բեթ --
	\acciaccatura bes8 a16([ g f g] f4) % ղե --
	\acciaccatura f8 bes2 % հէմ	
	bes8([ a] \acciaccatura bes a[ g]) % քա --
	g([ f16 e] bes'16.[ a32 g16 a]) % ղա --
	g2 % քի
	f4.( a8) % որ --
	g2 % դիք
	g8([ \acciaccatura a g16 f] g8[ a]) % մարդ --
	bes8([ \acciaccatura d c] bes[ a]) % կան
	g4( f) % օրհ --
	g4( a bes c) % նե --
	a4.( c8 a[ \acciaccatura c bes] a[ g]) % ցէք
	g2 % զի
	a16([ bes a g] a8[ bes] a[ \acciaccatura c bes16 a] g8[ a]) % վա --
	\acciaccatura bes8 a16([ g f g] f4) % սըն
	\acciaccatura f8 bes2 % մեր
	bes8([ a] \acciaccatura bes a[ g]) % մարմ --
	\acciaccatura a8 g16([ f e f] g8[ f] g4. f8) % նա --
	d'16.([ c32 bes16 c] bes4 a bes8[ \acciaccatura c bes16 a] g2) % ցաւ։
	\finalis	
}

chantGim = \relative f' {
	\acciaccatura f8 c'8._([ bes16] a8[ c] bes[ c] bes[ a]) % Ան --
	g4.( f8) % բա --
	d'([ c] bes[ a]) % ւե -- 
	c16([ bes a c] bes2) % լին --
	f8([ g16 a] bes8 a) % երկ --
	bes8([ \acciaccatura d c] bes[ a]) % նի 
	g8([ \acciaccatura a g16 f] g8[ a]) % եւ  
	bes2 % երկ --
	bes8([ \acciaccatura c bes16 a] bes8[ c] bes4 a) % րի
	g2 % ի
	a16([ bes a g] a8[ bes] a[ \acciaccatura c bes16 a] g8[ a]) % խան --
	\acciaccatura bes8 a16([ g f g] f4) % ձա --
	\acciaccatura f8 bes2 % րուրս	
	bes8([ a] \acciaccatura bes a[ g]) % պա --
	g([ f16 e] bes'16.[ a32 g16 a]) % տե --
	g2 % ցաւ,
	f4.( a8) % ոչ
	g2 % մեկ --
	g8([ \acciaccatura a g16 f] g8[ a]) % նե --
	bes8([ \acciaccatura d c] bes[ a]) % լով
	g4( f) % ի
	g4( a bes c) % Հօ --
	a4.( c8 a[ \acciaccatura c bes] a[ g]) % րէ
	g2 % ի
	a16([ bes a g] a8[ bes] a[ \acciaccatura c bes16 a] g8[ a]) % սուրբ
	\acciaccatura bes8 a16([ g f g] f4) % յայ --
	\acciaccatura f8 bes2 % րին
	bes8([ a] \acciaccatura bes a[ g]) % բազ --
	\acciaccatura a8 g16([ f e f] g8[ f] g4. f8) % մե --
	d'16.([ c32 bes16 c] bes4 a bes8[ \acciaccatura c bes16 a] g2) % ցաւ։
	\finalis
}

chantDaEchZa = \relative f' {
	\acciaccatura f8 c'8._([ bes16] a8[ c] bes[\acciaccatura d c] bes[ a]) % Այ --
	g4.( f8) % սօր --
	d'([ c] bes[ a]) % ցըն -- 
	c([ bes] a [ \acciaccatura d c] bes2) % ծան
	f8([ g16 a] bes8 a) % եր --
	bes8([ \acciaccatura d c] bes[ a]) % կինք 
	g8([ \acciaccatura a g16 f] g8[ a]) % ի  
	bes2 % վե --
	bes8([ \acciaccatura c bes16 a] bes8[ c] bes4 a) % րուստ
	g2 % մե
	a16([ bes a g] a8[ bes] a[ \acciaccatura c bes16 a] g8[ a]) % ծա --
	\acciaccatura bes8 a16([ g f g] f4) % պայ --
	\acciaccatura f8 bes2 % ծառ	
	bes8([ a] \acciaccatura bes a[ g]) % ա --
	g([ f16 e] bes'16.[ a32 g16 a]) % ւե --
	g2 % տեօք,
	f4.( a8) % եւ
	g2 % ա --
	g8([ \acciaccatura a g16 f] g8[ a]) % րա --
	bes8([ \acciaccatura d c] bes[ a]) % րածք
	g4( f) % ա --
	g4( a bes c) % մե --
	a4.( c8 a[ \acciaccatura c bes] a[ g]) % նայն
	g2 % զգե --
	a16([ bes a g] a8[ bes] a[ \acciaccatura c bes16 a] g8[ a]) % ցան
	\acciaccatura bes8 a16([ g f g] f4) % հան --
	\acciaccatura f8 bes2 % դերձ
	bes8([ a] \acciaccatura bes a[ g]) % փըր --
	\acciaccatura a8 g16([ f e f] g8[ f] g4. f8) % կու --
	d'16.([ c32 bes16 c] bes4 a bes8[ \acciaccatura c bes16 a] g2) % թեան։
	\finalis
}

chantE = \relative f' {
	\set Score.repeatCommands = #'((volta "1"))
	f4 % Ի
	g % Հօ --
	g % րէ
	\set Score.repeatCommands = #'((volta #f))
	a8.([ g16] f4 g8[ a] \acciaccatura d c[ bes]) % ծա --
	bes8([ a] \acciaccatura bes a[ g]) % գե --
	a8.([ g16] f8[ g] f2) % ցար
	f8( g4.) % լու --
	a16([ bes a g] a8[ bes] a[ \acciaccatura c bes16 a] g8[ a]) % սա --
	\acciaccatura bes8 a16([ g f g] f4) % ւո
	g4( bes) % րել
	a( g8[ a]) % զա --
	g8([ f] e[ g]) % րա --
	f4. % րածս
	r8
	\divisioMaxima
}

chantSegno = \relative f' {
	\mark \segno
	a16([ bes c8~] c4 ees16_[ d c bes] a_[ g a \acciaccatura d c] bes4. a8) % ար --
	bes8([ a] \acciaccatura d c[ bes]) % դա --
	bes([ a] \acciaccatura bes a[ g]) % րու --
	bes16([ a g a] g4) % թեան
	f4.( a8) % Ա --
	g2 % րե --
	a8([ bes16 a] g8[ a]) % գա --
	\acciaccatura bes a16([ g f g] f4) % կըն
	a16([ bes a g] a8[ bes] \acciaccatura d c[ bes] a[ g]) % Տէր
	\acciaccatura a g([ f] e[ f]) % փա --
	g4.( f8) % ռըք
	d'16.([ c32 bes16 c] bes4 a bes8[ \acciaccatura c bes16 a] g2.) % Քեզ
	r4
	\mark \segno 
	\finalis
}

chantSchwa = \relative f' {
	\set Score.repeatCommands = #'((volta "2"))
	f4 % Ծը --
	g % նար
	\set Score.repeatCommands = #'((volta #f))
	a8.([ g16] f4 g8[ a] \acciaccatura d c[ bes]) % ի
	bes8([ a] \acciaccatura bes a[ g]) % յայ --
	a8.([ g16] f8[ g] f2) % րին
	f8( g4.) % ըն --
	a16([ bes a g] a8[ bes] a[ \acciaccatura c bes16 a] g8[ a]) % ծա --
	\acciaccatura bes8 a16([ g f g] f4) % յե --
	g4( bes) % ցար
	a( g8[ a]) % Բեթ --
	g8([ f] e[ g]) % ղե --
	f4. % հէմ
	r8
	\divisioMaxima
}

wordsAyb = \lyricmode {
	Խոր -- հուրդ մեծ եւ սքան -- չե -- լի որ
	յայսմ ա -- ւուր յայտ -- նե -- ցաւ
	հո -- վիւքն եր -- գեն ընդ
	հրեշ -- տակս տան
	ա -- ւե -- տիս աշ -- խար -- հի։
}

wordsBen = \lyricmode {
	Ծնաւ նոր Ար -- քայ ի 
	Բեթ -- ղե -- հէմ քա -- ղա -- քի
	որ -- դիք մարդ -- կան օրհ -- նե -- ցէք
	զի վա -- սըն  մեր մարմ -- նա -- ցաւ։

}

wordsGim = \lyricmode {
	Ան -- բա -- ւե -- լին երկ -- նի
	եւ երկ -- րի ի խան -- ձա -- րուրս
	պա -- տե -- ցաւ,
	ոչ մեկ -- նե -- լով ի
	Հօ -- րէ ի
	սուրբ  յայ -- րին 
	բազ -- մե -- ցաւ։
}

wordsDa = \lyricmode {
	Այ -- սօր ցըն -- ծան
	եր -- կինք ի վե -- րուստ
	մե -- ծա -- պայ -- ծառ
	ա -- ւե -- տեօք,
	եւ ա -- րա -- րածք
	ա -- մե -- նայն
	զգե -- ցան հան -- դերձ
	փըր -- կու -- թեան։
}

wordsEch = \lyricmode {
	Այ -- սօր յայ -- րին " " ըն -- ծա -- յե -- ցաւ
	Քրիս -- տոս Որ -- դին
	Աս -- տու -- ծոյ եւ հրե -- ղի -- նաց
	բազ -- մու -- թիւնք
	յերկ -- նից յեր -- կիր
	վայր ի -- ջեալ։
}

wordsZa = \lyricmode {
	Այ -- սօր հով -- ուա -- "-" "-" ցըն 
	տես -- եալ զար -- դա -- րու -- թեան
	Ա -- րե -- գակն եւ ընդ հրեշ -- տակս
	եր -- գէ -- ին, փառք ի բար -- ձունս
	Աս -- տու -- ծոյ։
}

wordsE = \lyricmode {
	Ի Հօ -- րէ ծա -- գե -- ցար լու -- սա -- ւո -- րեալ
	զա -- րա -- րածս
}

wordsSegno = \lyricmode {
	ար -- դա -- րու -- թեան
	Ա -- րե -- գա -- կըն
	Տէր փա -- ռըք Քեզ
}

wordsSchwa = \lyricmode {
	Ծը -- նար ի յայ -- րին 
	ըն -- ծա -- յե -- ցար Բեթ -- ղե -- հէմ։
}

	\new Staff \with {
	instrumentName = \markup{ \override #'(font-name . "Mshtakan")
	\override #'(font-size . 3) Ա }
	} <<
		\new Voice = "Ayb" {
			\global
			\chantAyb
		}
	
		\new Lyrics \lyricsto "Ayb" {
			\wordsAyb
		}
	>>

	\new Staff \with {
	instrumentName = \markup{ \override #'(font-name . "Mshtakan")
	\override #'(font-size . 3) Բ }
	} <<	
		\new Voice = "Ben" {
			\global
			\chantBen
		}
	
		\new Lyrics \lyricsto "Ben" {
			\wordsBen
		}
	>>

	\new Staff \with {
	instrumentName = \markup{ \override #'(font-name . "Mshtakan")
	\override #'(font-size . 3) Գ }
	} <<	
		\new Voice = "Gim" {
			\global
			\chantGim
		}
	
		\new Lyrics \lyricsto "Gim" {
			\wordsGim
		}
	>>
	
	\new Staff \with {
	instrumentName = \markup{ \override #'(font-name . "Mshtakan")
	\override #'(font-size . 3) {Դ, Ե, Զ" "} }
	} <<	
		\new Voice = "DaEchZa" {
			\global
			\chantDaEchZa
		}
	
		\new Lyrics \lyricsto "DaEchZa" {
			\wordsDa
		}

		\new Lyrics \lyricsto "DaEchZa" {
			\wordsEch
		}
		
		\new Lyrics \lyricsto "DaEchZa" {
			\wordsZa
		}
	>>

	\new Staff \with {
	instrumentName = \markup{ \override #'(font-name . "Mshtakan")
	\override #'(font-size . 3) {Է, Ը " "}}
	} <<	
		\new Voice = "E" {
			\global
			\chantE
			\chantSchwa
			\chantSegno
		}
	
		\new Lyrics \lyricsto "E" {
			\wordsE
			\wordsSchwa
			\wordsSegno
		}
	>>

