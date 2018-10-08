import os
import sys
from setuptools import setup, find_packages

version = '0.1'

# setup.py内でpytestのimportが必要
setup_requires=[
    'pytest'
]
install_requires=[
    'requests',
]
tests_require=[
    'pytest-timeout',
    'pytest'
]

setup(name='rest-api',
      setup_requires=setup_requires,
      packages=find_packages(),
      install_requires=install_requires,
      tests_require=tests_require
)