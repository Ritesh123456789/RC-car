from setuptools import find_packages
from setuptools import setup

setup(
    name='eufs_msgs',
    version='2.0.0',
    packages=find_packages(
        include=('eufs_msgs', 'eufs_msgs.*')),
)