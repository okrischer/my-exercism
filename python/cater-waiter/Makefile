.PHONY: test

sourcefile := sets.py
testfile := sets_test.py

test: check
	pytest -xv -o markers=task $(testfile)

check:
	pylint --check-quote-consistency y $(sourcefile)
	mypy --strict $(sourcefile)
