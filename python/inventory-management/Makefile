.PHONY: test

sourcefile := dicts.py
testfile := dicts_test.py

test: check
	pytest -xv -o markers=task $(testfile)

check:
	pylint $(sourcefile)
	mypy --strict $(sourcefile)
