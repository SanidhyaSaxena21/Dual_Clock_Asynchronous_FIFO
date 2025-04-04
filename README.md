# Dual Clock Asynchronous FIFO

## Overview
This project implements a **Dual Clock Asynchronous FIFO** (First-In-First-Out) buffer. A FIFO is a type of memory queue that allows data to be written and read at different rates. This is particularly useful in applications where data needs to be transferred between two subsystems operating on different clock domains.

The design includes:
- **Dual clock support**: Separate write and read clocks.
- **Asynchronous operation**: Allows for safe data transfer between two clock domains.
- **Gray code pointers**: Ensures reliable pointer comparison across clock domains.

## Features
- **Supports dual clock domains**: Data can be written and read at different frequencies.
- **Configurable depth**: The depth of the FIFO can be set based on requirements.
- **Full and Empty flags**: Indicates the status of the FIFO, preventing overflow and underflow.
- **Data integrity**: Gray code is used to prevent timing issues and metastability when crossing clock domains.

## Applications
This design is suitable for:
- **Digital communication systems**: Where data must be buffered between different clocked components.
- **Processor and peripheral communication**: Handling data transfer between subsystems with different clock speeds.
- **Signal processing**: Buffering data streams in systems with varying processing times.

## Architecture
The design of the Dual Clock Asynchronous FIFO typically includes the following components:

1. **Write Pointer and Read Pointer**: Used to track the positions in the FIFO memory for writing and reading operations.
2. **Gray Code Conversion**: The pointers are converted to Gray code before crossing clock domains to avoid timing issues.
3. **Memory Array**: The core of the FIFO, where data is stored.
4. **Full and Empty Logic**: Determines when the FIFO is full or empty.
5. **Synchronization Registers**: Used to synchronize the pointers across different clock domains.

## File Structure
The repository contains the following files:

```plaintext
Dual_Clock_Asynchronous_FIFO/
├── rtl/                       # RTL code for the FIFO
│   ├── FIFO_MEMORY.v          # Verilog code for Dual Clock FIFO Meory
│   └── RPTR_EMPTY.v           # Verilog code for Read pointer Logic for Empty flag
|   └── WPTR_FULL.v            # Verilog code for Write pointer Logic for Full flag
|   └── sync_w2r.v             # Verilog code for two flip flop synchroniser
|   └── FIFO_TOP.v             # Verilog code for DUAL CLOCK FIFO TOP
|
├── tb/                        # Testbench files
│   └── tb_fifo.sv             # Testbench for the Dual Clock FIFO
|   └── tb_fifo_parallel.sv    # Testbench for the Dual Clock FIFO with fork Join
├── docs/                      # Documentation and diagrams
│   └── architecture_diagram.png
└── README.md                  # Project overview and instructions
```
## Architecture 
![Asynchronous Dual clock FIFO Architecture](Docs/FIFO_Block_Diagram.png)
We have two 2 clock domain WRITE CLK and READ CLK, and the data has to be transmitted from read domain to write domain. 
