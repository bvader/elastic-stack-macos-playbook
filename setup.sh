#!/usr/bin/env bash
set -x 
BASEDIR="$( cd "$( dirname "$0" )" && pwd)"

if ! which pipenv >/dev/null; then
  pip3 install pipenv
fi

CURR_DIR=$(PWD)
cd $BASEDIR
pipenv install
cp envrc.template .envrc
direnv allow
cd $CURR_DIR

