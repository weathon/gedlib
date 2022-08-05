GEDLIB_ROOT = "/home/wg25r/pyCMT/gedlib"
includes = [
"GEDLIB_ROOT",
"GEDLIB_ROOT/ext/boost.1.69.0",
"GEDLIB_ROOT/ext/eigen.3.3.4/Eigen",
"GEDLIB_ROOT/ext/nomad.3.8.1/src",
"GEDLIB_ROOT/ext/nomad.3.8.1/ext/sgtelib/src",
"GEDLIB_ROOT/ext/lsape.5/include",
"GEDLIB_ROOT/ext/libsvm.3.22",
"GEDLIB_ROOT/ext/fann.2.2.0/include"
]

links = [
"GEDLIB_ROOT/ext/libsvm.3.22",
"GEDLIB_ROOT/ext/fann.2.2.0/lib",
"GEDLIB_ROOT/ext/nomad.3.8.1/lib"
]

commond = ""
for i in includes:
    commond += " -I" + i + " "

for i in links:
    commond += " -L" + i + " "

import os
os.system("g++ -std=c++11 test.cpp " + commond)