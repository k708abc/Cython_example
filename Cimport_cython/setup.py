from setuptools import setup
from Cython.Build import cythonize
import Cython.Compiler.Options
from distutils.extension import Extension

Cython.Compiler.Options.annotate = True

ext_modules = [
    Extension("InputParameter", ["InputParameter.pyx"]),
]
setup(ext_modules=cythonize(ext_modules, annotate=True))
#
ext_modules = [
    Extension("recording", ["recording.pyx"]),
]
setup(ext_modules=cythonize(ext_modules, annotate=True))
#
ext_modules = [
    Extension("sub_functions", ["sub_functions.pyx"]),
]
setup(ext_modules=cythonize(ext_modules, annotate=True))
#
ext_modules = [
    Extension("main_function", ["main_function.pyx"]),
]
setup(ext_modules=cythonize(ext_modules, annotate=True))
#
