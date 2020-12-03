  
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
	html5validator index.html
all: setup install lint
