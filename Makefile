CEF_BUILD=$(DEPS_ROOT)/cef_3_3/cef_binary_84.4.1+gfdc7504+chromium-84.0.4147.105_linux64_minimal/
all:
	./buildCEF.sh.min $(DEPS_ROOT)

install: template
	cp FindCEF.cmake $(DEPS_BUILD)/lib/cmake/FindCEF.cmake

template:
	@echo "set(CEF_ROOT \"$(CEF_BUILD)\")" > FindCEF.cmake
	cat FindCEF.cmake.template >> FindCEF.cmake
