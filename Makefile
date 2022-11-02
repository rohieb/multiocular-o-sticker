SVGS = multiocular-o.svg multiocular-o-small.svg
PNGS = $(patsubst %.svg,%.png,$(SVGS))
PDFS = $(patsubst %.svg,%.pdf,$(SVGS))

ALL = $(PNGS) $(PDFS)

all: $(ALL)

clean:
	rm -f $(ALL)

%.png: %.svg
	inkscape --export-area-page --export-text-to-path --export-dpi=200 \
		--export-png=$@ $<

%.pdf: %.svg
	inkscape --export-area-page --export-text-to-path --export-pdf=$@ $<
