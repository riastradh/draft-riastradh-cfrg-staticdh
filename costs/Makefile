default-target: all
default-target: .PHONY
.PHONY:

all: .PHONY

GP = gp-2.15

TABLESCRIPTS = \
	fourq.gp \
	nistp256.gp \
	oakley3.gp \
	ristretto255.gp \
	secp256k1.gp \
	staticffdh.gp \
	# end of TABLESCRIPTS

.SUFFIXES:
.SUFFIXES: .gp
.SUFFIXES: .out

all: $(TABLESCRIPTS:.gp=.out)

clean: .PHONY
clean: clean-out
clean-out: .PHONY
	-rm -f $(TABLESCRIPTS:.gp=.out)
	-rm -f $(TABLESCRIPTS:.gp=.out.tmp)

$(TABLESCRIPTS:.gp=.out): lib.gp
.gp.out:
	$(GP) -q -f -D recover=0 -D breakloop=0 -s 80000000 $< >$@.tmp \
	&& mv -f $@.tmp $@
