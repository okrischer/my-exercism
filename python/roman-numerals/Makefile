.PHONY: test

sourcefile := roman_numerals.py
testfile := roman_numerals_test.py

test: check
	pytest -xv -o markers=task $(testfile)

check:
	pylint --check-quote-consistency y $(sourcefile)
	mypy --strict $(sourcefile)
