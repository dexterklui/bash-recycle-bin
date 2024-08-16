test:
	tests/test

zip:
	zip recyclebin.zip -r recycle restore tests -x tests/tmpTest

.PHONY: test zip
