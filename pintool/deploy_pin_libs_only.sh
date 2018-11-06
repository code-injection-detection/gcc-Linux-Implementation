#!/bin/bash

cp ./pinatrace_modified.cpp ./pin-3.7-97619-g0d0c92f4f-gcc-linux/source/tools/ManualExamples/pinatrace.cpp
cp ./itrace_modified.cpp ./pin-3.7-97619-g0d0c92f4f-gcc-linux/source/tools/ManualExamples/itrace.cpp
cd ./pin-3.7-97619-g0d0c92f4f-gcc-linux/source/tools/ManualExamples/
make all
