#!/bin/sh

echo "==> Setting python environment"

if [ -e venv/pyvenv.cfg ]
then
    echo "==> Install from requirements.txt python environment"
    source venv/bin/activate
    pip install -r requirements.txt
else # init
    echo "==> Init python environment"
    rm -rf venv
    #python -m venv venv
    virtualenv --python=$(pyenv root)/versions/3.5.2/bin/python --always-copy venv
    source venv/bin/activate
    pip install --upgrade pip
    pip install -r requirements.txt
fi