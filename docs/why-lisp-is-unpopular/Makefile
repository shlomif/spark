DOC = Why-Lisp-is-Unpopular

ASCIIDOC = $(DOC).txt
HTML = $(DOC).html
DOCBOOK = $(DOC).xml
PDF = $(DOC).pdf

all: $(HTML)

pdf: $(PDF)

$(HTML): $(ASCIIDOC)
	asciidoc $<

$(DOCBOOK): $(ASCIIDOC)
	asciidoc --backend=docbook $<

upload: $(HTML)
	rsync -v --progress -a $(HTML) $(ASCIIDOC) $(PDF) $(DOCBOOK) $$HOMEPAGE_SSH_PATH/spark-n9

$(PDF): $(DOCBOOK)
	docmake -v -o $@ pdf $<
