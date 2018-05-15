CEF_BUILD=$(DEPS_ROOT)/cef_3_3/cef_binary_3.3359.1772.gd1df190_linux64_minimal/
all:
	./buildCEF.sh.min $(DEPS_ROOT)

install:
	echo "set(CEF_ROOT \"$(CEF_BUILD)\")" > FindCEF.cmake
	cat FindCEF.cmake.template >> FindCEF.cmake
	cp FindCEF.cmake $(INSTALL_PREFIX)/lib/cmake/FindCEF.cmake
