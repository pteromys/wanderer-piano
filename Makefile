all: wanderer-piano.pdf wanderer-piano-d.pdf

wanderer-piano.pdf wanderer-piano-d.pdf: wanderer-piano.ly
	lilypond wanderer-piano.ly
	mv wanderer-piano-1.pdf wanderer-piano-d.pdf

clean:
	rm wanderer-piano.pdf wanderer-piano-1.pdf wanderer-piano.ps wanderer-piano-1.ps
