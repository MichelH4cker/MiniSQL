all : executavel

run : executavel
	./executavel

executavel : mini-sql.o entrada.o arquivos.o
	gcc -o executavel mini-sql.o entrada.o arquivos.o

mini-sql.o : mini-sql.c
	gcc -o mini-sql.o -c mini-sql.c

entrada.o : entrada.c
	gcc -o entrada.o -c entrada.c

arquivos.o : arquivos.c
	gcc -o arquivos.o -c arquivos.c

clean : 
	rm *.o
