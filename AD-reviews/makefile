PDF=ad-reviews.pdf
TXT = $(wildcard *.txt)

all: ad-reviews.pdf

$(PDF): $(TXT)
	pandoc $? -o $(PDF)

clean:
	rm -rf $(PDF)

.PHONY: all clean

