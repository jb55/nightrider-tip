
build: components nightrider-tip.css
	@component build --dev

nightrider-tip.css: nightrider-tip.less
	lessc -x $^ $@

components:
	@component install --dev

clean:
	rm -fr build components template.js

.PHONY: clean
