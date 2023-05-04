.PHONY: test

sourcefile := tuples.py
testfile := tuples_test.py

test: check
	pytest -xv -o markers=task $(testfile)

check:
	pylint --check-quote-consistency y $(sourcefile)
	mypy --strict $(sourcefile)
