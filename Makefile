%.raw: %.url
	curl "$(shell cat $<)" > $@

