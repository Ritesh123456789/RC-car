from setuptools import find_packages, setup

package_name = 'read_data'

setup(
    name=package_name,
    version='0.0.0',
    packages=find_packages(exclude=['test']),
    data_files=[
        ('share/ament_index/resource_index/packages',
            ['resource/' + package_name]),
        ('share/' + package_name, ['package.xml']),
    ],
    install_requires=['setuptools'],
    zip_safe=True,
    maintainer='ritesh',
    maintainer_email='ritesh@example.com',
    description='TODO: Package description',
    license='TODO: License declaration',
    tests_require=['pytest'],
    entry_points={
        'console_scripts': [
            "read_imu = read_data.read_imu:main", 
            "read_wheelspeed = read_data.read_wheelspeed:main"
        ],
    },
)
