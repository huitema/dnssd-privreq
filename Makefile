TARGET    = draft-ietf-dnssd-privreq
SOURCE    = ${TARGET}.xml
TXT       = ${TARGET}.txt
HTML      = ${TARGET}.html
PS        = ${TARGET}.ps
PDF       = ${TARGET}.pdf

XML2TXT   = xml2rfc --text
XML2HTML  = xml2rfc --html
TXT2PS    = enscript -p
PS2PDF    = ps2pdf
PDFREWORK = pdfcrop

RM        = rm -f

.PHONY: all, html, txt, pdf, clean

all: txt html pdf

%.txt: %.xml ${SOURCE}
	${XML2TXT} $<

%.html: %.xml ${SOURCE}
	${XML2HTML} $<

html: ${HTML}

txt: ${TXT}

pdf: ${TXT}
	${TXT2PS}    ${PS}  ${TXT}
	${PS2PDF}    ${PS}  ${PDF}
	${PDFREWORK} ${PDF} ${PDF}

clean:
	${RM} ${TXT} ${HTML} ${PS} ${PDF}
