#!/bin/bash

make
#cd ../src/
java -cp ../bin Secure_Assembly
#cd ../samples/
make secure
#cd ../src/
java -cp ../bin Secure_Machine_Code
#cd ../samples/
