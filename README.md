Double-Port Register File
Overview
This document outlines the specifications for a double-port register file consisting of 16 registers, each with a width of 8 bits. The register file supports simultaneous dual read access and single write access. The register file is initialized to 0x00 when the reset signal (RST) is active low (0). The file allows for concurrent reading of two registers designated by the @A and @B addresses, with the corresponding values propagated to the QA and QB output ports. Writing to a register is achieved through the use of the @W, W, and DATA inputs, where W specifies whether a write operation is to be performed. The write operation is synchronized with the clock signal.

Register File Structure
The register file consists of the following components:

16 Registers: There are a total of 16 registers, each capable of holding 8 bits of data.

Read Ports: The register file provides two read ports, @A and @B, which allow simultaneous reading of two registers.

Read Outputs: The values read from the registers specified by @A and @B are made available at the QA and QB output ports, respectively.

Write Port: Data can be written to the register file through the use of the @W, W, and DATA inputs.

Reset (RST) Signal: When the reset signal (RST) is active low (0), the entire register file is initialized to 0x00.

Write Operation
To perform a write operation:

Set the address of the register to be written to using the @W input.

Activate the W input (W = 1) to enable the write operation.

The data present on the DATA input is copied into the register specified by @W.

Bypass Functionality
In cases where the processor simultaneously issues read and write requests to the same register (data hazard), a bypass mechanism is implemented in the register file to simplify the design of the forwarding unit. This functionality allows for immediate forwarding of the written data to the output if both read and write operations target the same register:

If a write operation and a read operation target the same register, the output QX will be updated with the value of DATA.
Synchronization
Both the reset (RST) signal and write operations are synchronized with the clock signal, ensuring proper operation and consistency.

Please refer to Figure 7 for the schematic representation of the register file.

For additional details and timing diagrams, please consult the design documentation and datasheets.
