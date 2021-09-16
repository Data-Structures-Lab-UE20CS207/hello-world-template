a.out: main.o client.o
	gcc main.o client.o
	rm -f *.o *.h.gch

main.o: main.c client.h
	gcc -c main.c client.h

client.o: client.c
	gcc -c client.c

test: a.out
	bash test.sh 