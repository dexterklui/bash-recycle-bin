test:
	tests/test

test-y:
	tests/test < <(echo 'y')

zip:
	zip recyclebin.zip recycle restore README.md

zipwithtests:
	zip recyclebinWithTests.zip -r recycle restore README.md makefile tests -x tests/tmpTest

clean:
	rm -f recyclebin.zip
	rm -f recyclebinWithTests.zip

.PHONY: test test-y zip zipwithtests clean
