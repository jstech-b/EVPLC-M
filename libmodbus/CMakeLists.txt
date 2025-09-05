cmake_minimum_required(VERSION 3.22)
project(libmodbus C)

set(CMAKE_C_STANDARD 11)

add_library(libmodbus SHARED library.c)
