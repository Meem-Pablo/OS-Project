# Quick Start Guide - Running on macOS

## Prerequisites

The project requires:
- **g++ compiler** (usually comes with Xcode Command Line Tools)
- **C++11 support**
- **pthread library** (included with macOS)

## Step 1: Check if You Have g++

Open Terminal and run:
```bash
g++ --version
```

If you see version information, you're good to go!

If not, install Xcode Command Line Tools:
```bash
xcode-select --install
```

## Step 2: Navigate to Project Directory

```bash
cd "/Users/abdullah/OS Project LAB/Mini-Operating-System-Simulator"
```

## Step 3: Build the Project

```bash
make
```

This will:
- Compile all source files
- Link them together
- Create the executable at `build/os_simulator`

**Expected output:**
```
Compiling src/banker.cpp...
Compiling src/main.cpp...
...
==========================================
Build successful!
Run: ./build/os_simulator to start the simulator
==========================================
```

## Step 4: Run the Simulator

```bash
./build/os_simulator
```

Or if you prefer:
```bash
cd build
./os_simulator
```

## Step 5: Use the Menu

Once running, you'll see a menu:

```
========================================
   Mini OS Simulator - Main Menu
========================================
1. Start Simulation
2. Add Process Manually
3. Display System State
4. Exit
========================================
Enter your choice:
```

### Option 1: Start Simulation
- Starts producer-consumer threads
- Processes are generated automatically
- Press Enter to stop and run scheduler

### Option 2: Add Process Manually
- Add a process with custom parameters
- System checks resource allocation safety

### Option 3: Display System State
- Shows all processes
- Displays buffer state
- Shows Banker's Algorithm matrices
- Lists safe sequence and blocked processes

### Option 4: Exit
- Cleanly exits the program

## Troubleshooting

### Issue: "Command not found: g++"
**Solution:** Install Xcode Command Line Tools:
```bash
xcode-select --install
```

### Issue: Semaphore warnings
**Note:** You may see warnings about `sem_init` being deprecated on macOS. This is normal and the code will still work. The warnings don't affect functionality.

### Issue: "Permission denied"
**Solution:** Make sure the executable has execute permissions:
```bash
chmod +x build/os_simulator
```

### Issue: Build fails
**Solution:** Clean and rebuild:
```bash
make clean
make
```

## Quick Commands Reference

```bash
# Build the project
make

# Clean build artifacts
make clean

# Rebuild from scratch
make clean && make

# Run the simulator
./build/os_simulator

# Get help
make help
```

## Example Session

```bash
$ make
[Build output...]

$ ./build/os_simulator
Mini Operating System Simulator
Complex Computing Problem (CCP)
================================

========================================
   Mini OS Simulator - Main Menu
========================================
1. Start Simulation
2. Add Process Manually
3. Display System State
4. Exit
========================================
Enter your choice: 1

=== Starting Simulation ===
Starting producer-consumer threads...
[Producer 1] Generated: P1 [AT:2 BT:5 P:7]
[Producer 2] Generated: P2 [AT:1 BT:3 P:4]
[Consumer] Consumed: P1 [AT:2 BT:5 P:7] (Buffer size: 1)
...
Press Enter to stop and run scheduler...
[You press Enter]

Stopping producer-consumer...
Selected Scheduler: Round Robin Scheduling (Preemptive)
Number of ready processes: 6

=== Scheduling Results ===
[Results displayed...]
```

## Notes for macOS

- The code uses POSIX semaphores which work on macOS
- Some deprecation warnings may appear but don't affect functionality
- The simulator runs in Terminal (command-line interface)
- All output is text-based (no GUI)

Enjoy using the Mini OS Simulator! 🚀
