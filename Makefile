all: bin/qa bin/qa-test

.RHONY: all clean test

build/src/main.o: src/main.c src/functions.h
gcc -Wall -Werror -c src/main.c -o build/src/main.o

build/src/functions.o: src/functions.c src/functions.h
gcc -Wall -Werror -c src/functions.c -o build/src/functions.o -lm

bin/qa: build/src/main.o build/src/functions.o
gcc build/src/main.o build/src/functions.o -o bin/qa -lm

build/test/main.o: test/main.c thirdparty/ctest.h
gcc -Wall -Werror -I thirdparty -I src -c test/main.c -o build/test/main.o
