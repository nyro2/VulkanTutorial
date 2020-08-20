CFLAGS = -Wall --pedantic-errors -std=c++17
LDFLAGS = `pkg-config --static --libs glfw3` -lvulkan

main: main.cpp
	clang++ $< -o $@ $(CFLAGS) $(LDFLAGS) 

.PHONY: test clean

run: main
	./main

clean:
	rm -f main
