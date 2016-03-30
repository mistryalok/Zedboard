
TEST_DIRS_ALL := $(shell find * -type d -prune)

all: 
	$(foreach DIR,$(TEST_DIRS_ALL), make --directory=$(DIR) all;)


clean: 
	$(foreach DIR,$(TEST_DIRS_ALL), make --directory=$(DIR) allclean;)


.PHONY: all clean
