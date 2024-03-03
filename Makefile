CC=gcc
CFLAGS=-c -Wall
LDFLAGS=
SOURCES=main.c lib.c
OBJECTS=$(SOURCES:.c=.o)
EXECUTABLE=my_program

all: $(SOURCES) $(EXECUTABLE)

$(EXECUTABLE): $(OBJECTS)
	$(CC) $(LDFLAGS) $(OBJECTS) -o $@

.c.o:
	$(CC) $(CFLAGS) $< -o $@

clean:
	rm -rf *.o $(EXECUTABLE)
