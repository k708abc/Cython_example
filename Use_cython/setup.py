#!python3.12

from setuptools import setup
from Cython.Build import cythonize
import Cython.Compiler.Options

Cython.Compiler.Options.annotate = True

setup(ext_modules=cythonize("sub_functions.pyx"), annotate=True)
setup(ext_modules=cythonize("recording.pyx"), annotate=True)
setup(ext_modules=cythonize("InputParameter.pyx"), annotate=True)
setup(ext_modules=cythonize("main_function.pyx"), annotate=True)
