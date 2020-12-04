## The Makefile includes instructions on environment setup and lint tests
setup:
	# Create python virtualenv & source it
	python3 -m venv capstone
	# source ~/.capstone/bin/activate

install:
	# This should be run from inside a virtualenv
	. capstone/bin/activate &&\
	pip install --upgrade pip &&\
	pip install -r requirements.txt

lint:
	pylint --disable=C0114,C0116 app.py

all: setup install lint
