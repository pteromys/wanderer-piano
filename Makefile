KEY := cis

all: wanderer-piano-$(KEY).pdf

wanderer-piano-$(KEY).pdf: wanderer-piano.ly Makefile
	lilypond -e '(define-public indestkey (define-music-function (parser location music) (ly:music?) #{ \transpose d $(KEY) $$music #}))' wanderer-piano.ly
	mv wanderer-piano.pdf wanderer-piano-$(KEY).pdf

clean:
	rm wanderer-piano.pdf wanderer-piano-1.pdf wanderer-piano.ps wanderer-piano-1.ps
