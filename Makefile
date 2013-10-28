all: clean_dir css html clean

css:
	sass -t compressed static/main.scss template/main.css
	sass -t compressed static/base.scss template/base.css
	sass -t compressed static/pygments_style.scss template/pygments_style.css
	cp static/readme.txt template/readme.txt

html:
	python compress_html.py
	mv page/compressed/* template/
	rm -rf page/compressed

clean_dir:
	rm -rf template/
	mkdir template

clean:
	rm -rf .sass-cache/
	rm -rf static/.sass-cache/

