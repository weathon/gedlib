##
# @file install.py
# @brief Installs GEDLIB and its dependencies.
#
# @details 
# Usage: 
# ```sh
# $ python install.py [--help] [-h] [--doc] [--tests all|pr2018|sspr2018|unit_tests] [--boost \<BOOST_ROOT\>] [--debug] [--lib gxl|\<indentifier>,\<UserNodeID\>,\<UserNodeLabel\>,\<UserEdgeLabel\>]
# ```
#
# For more information, execute `$ python install.py --help`.

'''Installs GEDLIB and its dependencies.'''

from subprocess import call
import argparse
import shutil
import os.path

def append_ged_env_hpp(identifier, node_id_type, node_label_type, edge_label_type):
	append = ""
	append = append + "\n";
	append = append + "#ifdef " + identifier.upper() + "_GEDLIB_SHARED\n"
	append = append + "#ifndef SRC_ENV_GED_ENV_" + identifier.upper() + "_CPP_\n"
	append = append + "extern template class GEDEnv<" + node_id_type + ", " + node_label_type + ", " + edge_label_type + ">;\n"
	append = append + "#endif /* SRC_ENV_GED_ENV_" + identifier.upper() + "_CPP_ */\n"
	append = append + "#endif /*" + identifier.upper() + "_GEDLIB_SHARED */\n"
	delete_line = 0
	temp = open("temp", "wb")
	with open("src/env/ged_env.hpp", "r") as f:
		for line in f:
			if line.startswith("#ifdef ") and not line.startswith("#ifdef GXL_GEDLIB_SHARED"):
				delete_line = 6
			if line.startswith("#endif /* GXL_GEDLIB_SHARED */"):
				line = line + append
			if delete_line <= 0:
				temp.write(line)
			delete_line = delete_line - 1
	temp.close()
	shutil.move("temp", "src/env/ged_env.hpp")

def append_cmake_lists(identifier):
	append = ""
	append = append + "\n"
	append = append + "add_library(" + identifier.lower() + "gedlib SHARED env/ged_env." + identifier.lower() + ".cpp)\n"
	append = append + "set_target_properties(" + identifier.lower() + "gedlib PROPERTIES SUFFIX \".so\")\n"
	append = append + "target_link_libraries(" + identifier.lower() + "gedlib nomad doublefann svm)\n"
	append = append + "if(APPLE)\n"
	append = append + "  add_custom_command(TARGET " + identifier.lower() + "gedlib POST_BUILD COMMAND install_name_tool -change libnomad.so ${NOMAD_HOME}/lib/libnomad.so ${LIBRARY_OUTPUT_PATH}/lib" + identifier.lower() + "gedlib.so)\n"
	append = append + "  add_custom_command(TARGET " + identifier.lower() + "gedlib POST_BUILD COMMAND install_name_tool -change libdoublefann.2.dylib ${FANN_HOME}/lib/libdoublefann.2.dylib ${LIBRARY_OUTPUT_PATH}/lib" + identifier.lower() + "gedlib.so)\n"
	append = append + "add_custom_command(TARGET " + identifier.lower() + "gedlib POST_BUILD COMMAND install_name_tool -change libsvm.so ${LIBSVM_HOME}/libsvm.so ${LIBRARY_OUTPUT_PATH}/lib" + identifier.lower() + "gedlib.so)\n"
	append = append + "endif()\n"
	delete_line = 0
	temp = open("temp", "wb")
	with open("src/CMakeLists.txt", "r") as f:
		for line in f:
			if line.startswith("add_library(") and not line.startswith("add_library(gxlgedlib"):
				delete_line = 9
			if line.startswith("endif()"):
				line = line + append
			if delete_line <= 0:
				temp.write(line)
			delete_line = delete_line - 1
	temp.close()
	shutil.move("temp", "src/CMakeLists.txt")

def create_template_instantiation(identifier, node_id_type, node_label_type, edge_label_type):
	with open("src/env/ged_env." + identifier.lower() + ".cpp", "w") as f:
		f.write("/*!\n")
		f.write(" * @file ged_env." + identifier.lower() + ".cpp\n")
		f.write(" * @brief ged::GEDEnv<" + node_id_type + ", " + node_label_type + ", " + edge_label_type + "> template instantiation.\n")
		f.write(" */\n")
		f.write("\n")
		f.write("#ifndef SRC_ENV_GED_ENV_" + identifier.upper() + "_CPP_\n")
		f.write("#define SRC_ENV_GED_ENV_" + identifier.upper() + "_CPP_\n")
		f.write("\n")
		f.write("#include \"ged_env.hpp\"\n")
		f.write("\n")
		f.write("namespace ged {\n")
		f.write("\n")
		f.write("template class GEDEnv<" + node_id_type + ", " + node_label_type + ", " + edge_label_type + ">;\n")
		f.write("\n")
		f.write("}\n")
		f.write("\n")
		f.write("#endif /* SRC_ENV_GED_ENV_" + identifier.upper() + "_CPP_ */\n")
	
def parse_custom_types(custom_types):
	if len(custom_types.split(",")) != 4:
		raise Exception("Invalid argument \"" + args.lib + "\" for option lib. Usage: python install.py [--lib gxl|<indentifier-different-from-'gxl'>,<node-ID-type>,<node-label-type>,<edge-label-type>] [...]")
	return custom_types.split(",")

def create_directories():
	print("\n***** Create directories for shared libraries, executables and output. *****")
	commands = "mkdir -p lib; mkdir -p tests/pr2018/bin; mkdir -p tests/pr2018/output; mkdir -p tests/sspr2018/bin; mkdir -p tests/sspr2018/output; mkdir -p tests/unit_tests/bin; mkdir -p tests/unit_tests/output"
	call(commands, shell=True)

def build_external_libraries():
	if os.path.isfile("ext/.INSTALLED"):
		print("\n***** External libraries already installed. *****")
	else:
		print("\n***** Install external libraries. *****")
		commands = "cd ext/fann.2.2.0; mkdir -p build; cd build; rm -rf *; cmake -DCMAKE_INSTALL_PREFIX=.. ..; make install; cd ..; rm -rf build"
		call(commands, shell=True) 
		commands = "cd ext/nomad.3.8.1; mkdir -p lib; mkdir -p bin; cd src; make clean; make all; make clean; rm -rf ../bin"
		call(commands, shell=True)
		commands = "cd ext/libsvm.3.22; make lib; rm -f svm.o"
		call(commands, shell=True)
		f = open("ext/.INSTALLED", "w")
		f.close()

def build_gedlib(args):
	if not os.path.isdir(args.boost):
		raise Exception("Invalid argument \"" + args.boost + "\" for option boost: not a directory. Usage: python install.py [--boost <path-to-directory-containing-Boost-sources>] [...]")
	identifier = "gxl"
	if args.lib and args.lib != "gxl":
		identifier, node_id_type, node_label_type, edge_label_type = parse_custom_types(args.lib)
		if identifier.lower() == "gxl":
			raise Exception("Invalid argument \"" + args.lib + "\" for option lib. Usage: python install.py [--lib gxl|<indentifier-different-from-'gxl'>,<node-ID-type>,<node-label-type>,<edge-label-type>] [...]")
		print("\n***** Modify sources for building user-defined shared library. *****")
		create_template_instantiation(identifier, node_id_type, node_label_type, edge_label_type)
		append_ged_env_hpp(identifier, node_id_type, node_label_type, edge_label_type)
		append_cmake_lists(identifier)
	
	print("\n***** Goto build directory. *****")
	commands = "mkdir -p build"
	call(commands, shell=True)
	
	if (not os.path.isfile("build/Makefile")) or args.update_makefile:
		print("\n***** Run CMake. *****")
		commands = "cd build; rm -rf *; cmake -DBOOST_ROOT=" + args.boost + " -DCMAKE_BUILD_TYPE="
		if args.debug:
			commands = commands + "Debug .."
		else:
			commands = commands + "Release .."
		call(commands, shell=True)

	if args.doc:
		print("\n***** Generate documentation. *****")
		commands = "cd build; make doc"
		call(commands, shell=True)
	
	if args.lib:
		print("\n***** Build shared library. *****")
		commands = "cd build; make " + identifier.lower() + "gedlib"
		call(commands, shell=True)

	if args.tests:
		print("\n***** Build test executables. *****")
		if args.tests == "all":
			commands = "cd build; make tests"
			call(commands, shell=True)
		else:
			commands = "cd build; make " + args.tests
			call(commands, shell=True)
			
	if args.clean:
		print("\n***** Delete build directory. *****")
		commands = "rm -rf build"
		call(commands, shell=True)

print("**************************************************")
print("                    GEDLIB 1.0                    ")
print("                Installation Script               ")
print("**************************************************")

parser = argparse.ArgumentParser(description="Installs GEDLIB and its dependencies unless they have already been installed.", epilog="If called without arguments, only the dependencies are installed.")
parser.add_argument("--doc", help="build documentation; requires --boost <BOOST_ROOT>", action="store_true")
parser.add_argument("--lib", help="build shared library; requires --boost <BOOST_ROOT>", metavar="gxl|<indentifier>,<UserNodeID>,<UserNodeLabel>,<UserEdgeLabel>")
parser.add_argument("--tests", help="build test executables; requires --boost <BOOST_ROOT>", metavar="all|unit_tests|ged_env_tests|lsap_solver_tests|pr2018|sspr2018", choices=["all", "unit_tests", "ged_env_tests", "lsap_solver_tests", "pr2018", "sspr2018"])
parser.add_argument("--boost", metavar="<BOOST_ROOT>", help="specify path to directory containing Boost sources")
parser.add_argument("--debug", help="build in debug mode", action="store_true")
parser.add_argument("--clean", help="delete build directory", action="store_true")
parser.add_argument("--update_makefile", help="updates the makefile", action="store_true")
args = parser.parse_args()
if not args.boost and (args.lib or args.tests or args.doc):
	raise Exception("The argument --boost BOOST is required if the script is called with one of the options --lib, --tests or --doc.")
build_external_libraries()
create_directories()
if args.lib or args.tests or args.doc:
	build_gedlib(args)
print("\n***** Successfully installed GEDLIB. *****")