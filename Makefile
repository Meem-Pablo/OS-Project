# ============================================================================
# Makefile for Mini OS Simulator
# ============================================================================
# This Makefile builds the Mini Operating System Simulator project
# Project Structure:
#   include/  - Header files (.h)
#   src/      - Source files (.cpp)
#   build/    - Object files and executable (generated)
#   docs/     - Documentation files
# ============================================================================

# Compiler and flags
CXX = g++
CXXFLAGS = -std=c++11 -pthread -Wall -Wextra -O2 -Iinclude
LDFLAGS = -pthread

# Directories
SRC_DIR = src
INCLUDE_DIR = include
BUILD_DIR = build

# Target executable
TARGET = $(BUILD_DIR)/os_simulator

# Source files (all .cpp files in src/)
SOURCES = $(wildcard $(SRC_DIR)/*.cpp)

# Object files (corresponding .o files in build/)
OBJECTS = $(SOURCES:$(SRC_DIR)/%.cpp=$(BUILD_DIR)/%.o)

# Header files (all .h files in include/)
HEADERS = $(wildcard $(INCLUDE_DIR)/*.h)

# Default target
all: $(BUILD_DIR) $(TARGET)
	@echo ""
	@echo "=========================================="
	@echo "Build successful!"
	@echo "Run: ./$(TARGET) to start the simulator"
	@echo "=========================================="

# Create build directory if it doesn't exist
$(BUILD_DIR):
	@mkdir -p $(BUILD_DIR)

# Build executable
$(TARGET): $(OBJECTS)
	@echo "Linking executable..."
	$(CXX) $(CXXFLAGS) $(LDFLAGS) -o $(TARGET) $(OBJECTS)

# Compile source files to object files
$(BUILD_DIR)/%.o: $(SRC_DIR)/%.cpp $(HEADERS)
	@echo "Compiling $<..."
	$(CXX) $(CXXFLAGS) -c $< -o $@

# Clean build artifacts
clean:
	@echo "Cleaning build artifacts..."
	rm -rf $(BUILD_DIR)
	@echo "Clean complete."

# Rebuild from scratch
rebuild: clean all

# Install (copy executable to project root for convenience)
install: $(TARGET)
	@cp $(TARGET) ./os_simulator
	@echo "Executable copied to project root as 'os_simulator'"

# Help
help:
	@echo "=========================================="
	@echo "Mini OS Simulator Makefile"
	@echo "=========================================="
	@echo "Usage: make [target]"
	@echo ""
	@echo "Targets:"
	@echo "  all      - Build the simulator (default)"
	@echo "  clean    - Remove all build artifacts"
	@echo "  rebuild  - Clean and rebuild"
	@echo "  install  - Build and copy executable to root"
	@echo "  help     - Show this help message"
	@echo ""
	@echo "Project Structure:"
	@echo "  include/  - Header files"
	@echo "  src/      - Source files"
	@echo "  build/    - Build output"
	@echo "  docs/     - Documentation"

.PHONY: all clean rebuild install help
