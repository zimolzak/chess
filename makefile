files = alex-2020-12-07.pgn

.PHONY: all clean

all: $(files)

%.pgn: %.txt
	python space2pgn.py $< > $@

clean:
	rm -f $(files)
