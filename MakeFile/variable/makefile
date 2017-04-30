#
# 変数について
#
#VPATH = src
vpath %.c src
vpath %.l src
vpath %.h include
CPPFLAGS = -I include

count_words: counter.o lexer.o -ll
count_words.o: counter.h
counter.o: counter.h
lexer.o: lexer.h

%.o: %.c
	$(COMPILE.c) $(OUTPUT_OPTION) $<
%.c: %.l
	@$(RM) $@
	$(LEX.l) $< > $@

%: %.o
	$(LINK.o) $^ $(LOADLIBES) $(LDLIBS) -o $@


.PHONY: clean
clean:
	rm -f *.o *.c count_words
