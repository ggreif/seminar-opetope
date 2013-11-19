%.raw: %.url
	curl "$(shell cat $<)" > $@

opetope.html: opetope.raw slidy.awk
	awk -f slidy.awk $< > $@
	open -a Firefox $@

.PHONY: clean pull regenerate

clean:
	rm opetope.raw

pull:
	git pull --rebase

regenerate: clean pull opetope.html