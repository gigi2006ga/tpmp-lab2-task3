CC = gcc
CFLAGS = -Wall -Wextra -std=c11
TARGET = program

# Файлы, которые будут в папке src
SRCS = src/main.c src/server.c
OBJS = $(SRCS:.c=.o)

all: $(TARGET)

$(TARGET): $(OBJS)
	$(CC) $(OBJS) -o $(TARGET)

src/%.o: src/%.c
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm -f src/*.o $(TARGET)
