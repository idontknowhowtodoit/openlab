bin/myapp: obj/funcs.o obj/myapp.o
	gcc -o $@ $^
obj/myapp.o: src/myapp.c
	gcc -o $@ -c $^ -I./include
obj/funcs.o: src/funcs.c
	gcc -o $@ -c $^ -I./include
clean:
	rm -f bin/myapp
	rm -f obj/*.o
