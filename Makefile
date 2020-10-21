all: clean libs cloud_coverage

clean:
	rm -rf build dist pip_example_pkg_revuel.egg-info

libs:
	pip install -r requirements.txt

test:
	python -m unittest

coverage:
	coverage run --branch --source=example_pkg --omit=*__init__* -m unittest && \
	coverage report --ignore-errors --omit=venv/**,tests/**,*__init__* && \
	coverage xml

build:
	python setup.py sdist bdist_wheel

publish:
	twine upload dist/*
