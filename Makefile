CEF_BUILD=$(DEPS_ROOT)/cef_3_3/cef_binary_3.3359.1772.gd1df190_linux64_minimal/
all:
	./buildCEF.sh.min $(DEPS_ROOT)

install: template
	cp FindCEF.cmake $(DEPS_BUILD)/lib/cmake/FindCEF.cmake

template:
	@echo "set(CEF_ROOT \"$(CEF_BUILD)\")" > FindCEF.cmake
	cat FindCEF.cmake.template >> FindCEF.cmake
