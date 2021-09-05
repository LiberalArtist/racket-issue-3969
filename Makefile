.PHONY: all
ARGS= -e "(require setup/variant)" -e "(system-type 'gc)" -e "(variant-suffix 'cs \#f)"
all:
	./racket/bin/racket -G layer/etc/racket -l- raco setup --no-user
	./racket/bin/racket $(ARGS)
	./layer/bin/racket $(ARGS)
	file ./layer/bin/racket
