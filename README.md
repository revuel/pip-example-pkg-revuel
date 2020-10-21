# Pip example package
[![Built with spaCy](https://img.shields.io/badge/made%20with%20❤%20and-spaCy-09a3d5.svg)](https://spacy.io) 
[![PyPI version](https://badge.fury.io/py/pip-example-pkg-revuel.svg)](https://badge.fury.io/py/pip-example-pkg-revuel)



[Tutorial about how to distribute pip packages](https://packaging.python.org/tutorials/packaging-projects/)

**Dependencies**

`pip install --upgrade setuptools wheel`

`pip install --upgrade twine`

**Build**

`python setup.py sdist bdist_wheel`

**Upload**

`twine upload  dist/*`
