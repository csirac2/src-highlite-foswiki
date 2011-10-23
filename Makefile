all: sh_tml.js

sh_tml.js: tml*.lang
	cp tml*.lang ../shjs-0.6-src/source-highlight-lang/
	cd ../shjs-0.6-src/ && perl -I . sh2js.pl source-highlight-lang/tml.lang > lang/sh_tml.js
	cp ../shjs-0.6-src/lang/sh_tml.js .
	cd ../shjs-0.6-src/lang && yui-compressor sh_tml.js > sh_tml.min.js
	cp ../shjs-0.6-src/lang/sh_tml.min.js .
