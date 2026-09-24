all: bin
.PHONY: bin test
bin:
	@$(MAKE) -C $@

NVIM ?= nvim
test:
	$(NVIM) --headless -u NONE -i NONE -c 'luafile tests/neovim.lua'
	$(NVIM) --headless -u NONE -i NONE -c 'luafile tests/plumbing.lua'
