build/test/x_test.o: test/x_test.c thirdparty/ctest.h
gcc -Wall -Werror -I thirdparty -I src -c test/x_test.c -o build/test/x_test.o

build/test/discriminant_test.o: test/discriminant_test.c thirdparty/ctest.h
gcc -Wall -Werror -I thirdparty -I src -c test/discriminant_test.c -o build/test/discriminant_test.o

bin/qa-test: build/test/x_test.o build/test/main.o build/test/discriminant_test.o
gcc build/src/functions.o build/test/x_test.o build/test/main.o build/test/discriminant_test.o -o bin/qa-test -lm

clean:
rm -rf build/src/*.o build/test/*.o bin/* bin/*.*
