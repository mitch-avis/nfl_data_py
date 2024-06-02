#!/bin/bash

echo "Sorting imports with isort..."
isort .
isort nfl_data_py/*.py

echo "Reformatting with black..."
black .
black nfl_data_py/*.py

echo "Linting with flake8..."
flake8 .
flake8 nfl_data_py/*.py

echo "Linting with pylint..."
pylint nfl_data_py/
