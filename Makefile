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

sonar:
	sonar-scanner -Dsonar.projectKey=revuel_pip-example-pkg-revuel

build:
	python setup.py sdist bdist_wheel

publish:
	twine upload -u __token__ -p ${PYPI_TOKEN} --repository-url https://upload.pypi.org/legacy/ dist/*

