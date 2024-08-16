test:
	tests/test

zip:
	zip recyclebin.zip recycle restore

zipwithtests:
	zip recyclebinWithTests.zip -r recycle restore tests -x tests/tmpTest

clean:
	rm -f recyclebin.zip
	rm -f recyclebinWithTests.zip

.PHONY: test zip zipwithtests clean
