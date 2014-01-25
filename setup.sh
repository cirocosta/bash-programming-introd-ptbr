#!/bin/bash

# Verifies the sanity of the development environment.
# If it is not  everything OK then it will install what it needs.
# ------ IT REQUIRES PERMISSION -------

# Checks virtualenv environment

ROOTDIR=$(pwd)
VIRTUALENV=virtualenv
PYPI=pip

if ! type "$PYPI" > /dev/null; then
	echo "Pip is required but is not installed."
	echo "Getting python-pip"
  	apt-get install python-pip
else
	echo "Pip already installed			(OK)"
fi

if ! type "$VIRTUALENV" > /dev/null; then
	echo "Virtualenv required but is not installed"
	echo "Getting virtualenv"
  	pip install virtualenv
else
	echo "Virtualenv already installed	(OK)"
fi

VENV_DIR=$ROOTDIR/.env
if [ ! -d "$VENV_DIR" ]; then
  echo 'Virtualenv environment not found. Creating!'
  virtualenv .env
else
	echo "Virtualenv environment found	(OK)"
fi

# As the virtualenv environment is ok, installs what is in requirements

source $ROOTDIR/.env/bin/activate
pip install -r requirements.txt

echo "Development environment OK"
echo "To build the docs:"
echo "cd docs --> make html"