all:	
	make 1.5.x
	make 2.5.x
	make 3.x.x
1.5.x:	1.5.x/EUCookieDirectiveLite.xml common/*	
	-mkdir tmp
	cp 1.5.x/EUCookieDirectiveLite.xml tmp/
	cp -r common/* tmp/
	zip -D -9 -l 1.5.x/EUCookieDirective_j15x.zip tmp/*
	rmdir tmp/
2.5.x:	2.5.x/EUCookieDirectiveLite.xml common/*
3.x.x:	3.x.x/EUCookieDirectiveLite.xml common/*
