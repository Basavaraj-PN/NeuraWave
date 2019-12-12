CC		= g++
C_FLAGS = -g -Wall

BIN		= bin
SRCS	= src/*.cpp
PROG = bin/main
SRC = src
INCLUDE	:= include
LIB		:= lib


OPENCV = `pkg-config opencv --cflags --libs`
LIBS = $(OPENCV)

# EXECUTABLE	:= main

# $(PROG):$(SRCS)
# 	$(CC) $(CFLAGS) -o $(PROG) $(SRCS) $(LIBS)
	
EXECUTABLE = main
all: $(BIN)/$(EXECUTABLE)

clean:
	$(RM) $(BIN)/$(EXECUTABLE)

run: all
	./$(BIN)/$(EXECUTABLE)

$(BIN)/$(EXECUTABLE): $(SRC)/*.cpp
	$(CC) $(C_FLAGS) -I$(INCLUDE) -L$(LIB) $^ -o $@ $(LIBS)