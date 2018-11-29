#!/bin/bash

#decompresses and deploys. call once after cloning repo. After that call deploy_pin_libs_only.sh
tar -xvzf pin-3.7-97619-g0d0c92f4f-gcc-linux.tar.gz
cp ./pin-3.7-97619-g0d0c92f4f-gcc-linux/source/tools/ManualExamples/itrace.cpp ./pin-3.7-97619-g0d0c92f4f-gcc-linux/source/tools/ManualExamples/itrace_orig.cpp
cp ./pin-3.7-97619-g0d0c92f4f-gcc-linux/source/tools/ManualExamples/pinatrace.cpp ./pin-3.7-97619-g0d0c92f4f-gcc-linux/source/tools/ManualExamples/pinatrace_orig.cpp
cp ./pinatrace_modified.cpp ./pin-3.7-97619-g0d0c92f4f-gcc-linux/source/tools/ManualExamples/pinatrace.cpp
cp ./itrace_modified.cpp ./pin-3.7-97619-g0d0c92f4f-gcc-linux/source/tools/ManualExamples/itrace.cpp
cd ./pin-3.7-97619-g0d0c92f4f-gcc-linux/source/tools/ManualExamples/
make all
