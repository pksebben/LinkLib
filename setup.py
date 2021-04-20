"""
Looking at a few different deployment options, this is the one recommended in the flask docs at:
https://flask.palletsprojects.com/en/1.1.x/tutorial/install/

PANTS build is the other option under consideration, but may turn out to be more intensive than this project requires.

Alternatively, we could also simply script-copy and run all of this, using ansible.  Hacky, but it'll get the job done in a pinch
"""

from setuptools import find_packages, setup

setup(
    name='linklib',
    version='0.1',
    packages=find_packages(),
    include_package_data=True,
    zip_safe=False,
    install_requires=[
        'flask',
        'sqlalchemy',
    ],
)
