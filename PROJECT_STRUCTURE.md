# Project Structure

```
Mini-Operating-System-Simulator/
│
├── include/                    # Header files (.h)
│   ├── process.h              # Process data structure definition
│   ├── scheduler.h             # CPU scheduler classes (Priority, Round Robin)
│   ├── producer_consumer.h     # Producer-Consumer pattern implementation
│   └── banker.h               # Banker's Algorithm for deadlock prevention
│
├── src/                        # Source files (.cpp)
│   ├── process.cpp             # Process implementation
│   ├── scheduler.cpp           # Scheduler algorithms implementation
│   ├── producer_consumer.cpp   # Producer-Consumer implementation
│   ├── banker.cpp              # Banker's Algorithm implementation
│   └── main.cpp                # Main program and menu system
│
├── build/                      # Build output directory (generated)
│   ├── *.o                    # Object files
│   └── os_simulator           # Executable
│
├── docs/                       # Documentation
│   ├── README.md              # Project documentation
│   ├── REPORT.md              # Project report (markdown)
│   └── generate_pdf.html      # HTML version of report (for PDF generation)
│
├── Makefile                    # Build configuration
├── .gitignore                  # Git ignore rules
├── generate_pdf.sh             # Script to generate PDF report
└── PROJECT_STRUCTURE.md        # This file

```

## Directory Descriptions

### `include/`
Contains all header files (.h) that define the interfaces and data structures.

- **process.h**: Defines the `Process` structure with all required attributes
- **scheduler.h**: Defines scheduler classes (Priority, Round Robin) and factory
- **producer_consumer.h**: Defines bounded buffer and thread management classes
- **banker.h**: Defines Banker's Algorithm class for deadlock prevention

### `src/`
Contains all implementation files (.cpp) with detailed comments.

- **process.cpp**: Implementation of Process methods
- **scheduler.cpp**: Implementation of scheduling algorithms
- **producer_consumer.cpp**: Implementation of producer-consumer pattern
- **banker.cpp**: Implementation of Banker's Algorithm
- **main.cpp**: Main program with menu system and integration

### `build/`
Generated directory containing compiled object files and executable.

- Created automatically by Makefile
- Contains `.o` files (object files)
- Contains `os_simulator` (final executable)

### `docs/`
Documentation files for the project.

- **README.md**: Complete project documentation
- **REPORT.md**: Detailed project report (markdown format)
- **generate_pdf.html**: HTML version for easy PDF generation

## Building the Project

```bash
# Build the project
make

# Clean build artifacts
make clean

# Rebuild from scratch
make rebuild

# Run the simulator
./build/os_simulator
```

## Code Organization

The project follows a modular design:

1. **Process Module** (`process.h/cpp`): Core data structure
2. **Scheduler Module** (`scheduler.h/cpp`): CPU scheduling algorithms
3. **Producer-Consumer Module** (`producer_consumer.h/cpp`): Thread synchronization
4. **Banker's Algorithm Module** (`banker.h/cpp`): Deadlock prevention
5. **Main Program** (`main.cpp`): Integration and user interface

Each module is self-contained with clear interfaces, making the code easy to understand and maintain.
