LIBDIR := lib
include $(LIBDIR)/main.mk

$(LIBDIR)/main.mk:
ifneq (,$(shell grep "path *= *$(LIBDIR)" .gitmodules 2>/dev/null))
	git submodule sync
	git submodule update $(CLONE_ARGS) --init
else
	git clone -q --depth 10 $(CLONE_ARGS) \
	    -b main https://github.com/martinthomson/i-d-template $(LIBDIR)
endif

clean:: clean-depend
.PHONY: clean-depend
clean-depend:
	-rm -f .depend
	-rm -f $(TARGETS_DRAFTS:=.d)
	-rm -f $(TARGETS_DRAFTS:=.d.tmp)
.depend: $(TARGETS_DRAFTS:=.d)
	cat $(TARGETS_DRAFTS:=.d) >$@.tmp && mv -f $@.tmp $@
-include .depend

.SUFFIXES: .md
.SUFFIXES: .d

.md.d:
	sed -ne 's/^{::include \(.*\)}$$/$*.xml: \1/gp' <$< >$@.tmp \
	&& mv -f $@.tmp $@
