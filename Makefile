all:	
	make 1.5.x
	make 2.5.x
	make 3.x.x
1.5.x:	1.5.x/EUCookieDirectiveLite.xml common/*	
	-mkdir tmp
	cp -r common/* tmp/
	cp -fr 1.5.x/* tmp/
	-xsltproc --stringparam date "`date +%Y-%m-%d`" build.xslt 1.5.x/EUCookieDirectiveLite.xml > tmp/EUCookieDirectiveLite.xml
	cd tmp; zip -r -9 ../install/EUCookieDirective_j15x.zip * -x \*~ 
	-rm -r tmp/
2.5.x:	2.5.x/EUCookieDirectiveLite.xml common/*
	-mkdir tmp
	cp -r common/* tmp/
	cp -fr 2.5.x/* tmp/
	-xsltproc --stringparam date "`date +%Y-%m-%d`" build.xslt 2.5.x/EUCookieDirectiveLite.xml > tmp/EUCookieDirectiveLite.xml
	cd tmp; zip -r -9 ../install/EUCookieDirective_j25x.zip * -x \*~ 
	-rm -r tmp/
3.x.x:	3.x.x/EUCookieDirectiveLite.xml common/*
	-mkdir tmp
	cp -r common/* tmp/
	cp -fr 3.x.x/* tmp/
	-xsltproc --stringparam date "`date +%Y-%m-%d`" build.xslt 3.x.x/EUCookieDirectiveLite.xml > tmp/EUCookieDirectiveLite.xml
	cd tmp; zip -r -9 ../install/EUCookieDirective_j3x.zip * -x \*~ 
	-rm -r tmp/
