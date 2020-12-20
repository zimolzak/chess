files = alex-2020-12-07.pgn alex1211.pgn alex1212.pgn dec19.pgn

.PHONY: all clean

all: $(files)

%.pgn: %.txt
	python space2pgn.py $< > $@

clean:
	rm -f $(files)
