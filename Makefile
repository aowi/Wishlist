all:	$(addsuffix .html,$(basename $(wildcard *.mkd)))
	@echo $?

%.html:	%.mkd
	@echo "Generating $@ ..."
	@maruku --html --output $@ $<

clean:
	rm -f *.tmp *.html

.phony:	clean
