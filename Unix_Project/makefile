# Define all the source files (replace with your actual file names)
SRC_FILES = main.cpp source1.cpp source2.cpp

# Define the object files (automatically generated from source files)
OBJ_FILES = $(SRC_FILES:.cpp=.o)

# Define the name of the final executable (replace with your desired name)
EXEC = my_program

# Define the compiler (modify if needed, e.g., g++ for C++)
CC = gcc

# Define compiler flags (modify as needed)
CFLAGS = -Wall -O2

# Main rule to build the executable
all: $(EXEC)

# Rule to compile each source file into an object file
$(OBJ_FILES): $(SRC_FILES)
    $(CC) $(CFLAGS) -c $< -o $@

# Rule to link all object files into the final executable
$(EXEC): $(OBJ_FILES)
    $(CC) $(CFLAGS) $(OBJ_FILES) -o $@

# Rule to clean up all object files and the executable
clean:
    rm -f $(OBJ_FILES) $(EXEC)

