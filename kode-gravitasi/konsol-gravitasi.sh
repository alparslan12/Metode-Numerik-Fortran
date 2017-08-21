#!/bin/bash

gfortran -c sumbuy.f90 sumbux.f90

gfortran sumbuy.o sumbux.o utama.f90 -o utama

./utama

gnuplot "ploting.gnu"
