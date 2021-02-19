CC = g++ -std=c++11 -g -Wall
all: mst

mst: util.o mst.o
	$(CC) util.o mst.o -o mst

util.o: util.cpp util.h
	$(CC) -c util.cpp
mst.o: mst.cpp mst.h
	$(CC) -c mst.cpp


clean:
	rm *.o mst

