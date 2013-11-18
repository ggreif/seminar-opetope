%.raw: %.url
	curl "$(shell cat $<)" > $@

opetope.html: opetope.raw slidy.awk
	awk -f slidy.awk $< > $@
	open -a Firefox $@

