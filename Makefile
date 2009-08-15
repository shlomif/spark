DOC = Spark-Pre-Birth-of-a-Modern-Lisp

ASCIIDOC = $(DOC).txt
HTML = $(DOC).html
DOCBOOK = $(DOC).xml

all: $(HTML)

$(HTML): $(ASCIIDOC)
	asciidoc $<

upload: $(HTML)
	rsync -v --progress -a $(HTML) $(ASCIIDOC) $$HOMEPAGE_SSH_PATH/spark-n9
