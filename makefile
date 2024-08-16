test:
	tests/test

zip:
	zip recyclebin.zip recycle restore

zipwithtests:
	zip recyclebinWithTests.zip -r recycle restore tests -x tests/tmpTest

.PHONY: test zip zipwithtests
