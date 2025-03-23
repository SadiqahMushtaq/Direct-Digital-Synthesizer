# Digital System Design - Direct Digital Synthesis (DDS)

## Project Overview
This project implements Direct Digital Synthesis (DDS) using Verilog. The design includes a phase accumulator, a phase-to-amplitude converter, and a main module integrating these components. A testbench verifies the design, and MATLAB is used for data visualization.

## Table of Contents
- [Architecture](#architecture)
  - [Phase Accumulator](#phase-accumulator)
  - [Phase to Amplitude Converter](#phase-to-amplitude-converter)
  - [Main Module](#main-module)
- [Verilog Code](#verilog-code)
  - [Phase Accumulator](#phase-accumulator-code)
  - [Phase to Amplitude Converter](#phase-to-amplitude-code)
  - [Main Module](#main-module-code)
- [Testbench](#testbench)
- [MATLAB Plotting](#matlab-plotting)
- [Results](#results)
  - [125 kHz Sine Wave](#125-khz-sine-wave)
  - [10 kHz Sine Wave](#10-khz-sine-wave)
  - [68 kHz Sine Wave](#68-khz-sine-wave)
- [Analysis](#analysis)
- [How to Run](#how-to-run)
- [Acknowledgments](#acknowledgments)

## Architecture
### Phase Accumulator
The phase accumulator keeps track of the waveform's current position. It increments the phase at each clock cycle based on:

```
PHASE_INC = (2^N * Desired Frequency) / Clock Frequency
```

### Phase to Amplitude Converter
This module converts the phase accumulator's output into an amplitude value using a lookup table.

### Main Module
The main module integrates the phase accumulator and phase-to-amplitude converter to generate a sine wave output.

## Verilog Code
### Phase Accumulator Code
```verilog
module phase_accum #(parameter N = 10) (
    input wire clk,
    input wire rst,
    output reg [N-1:0] phase
);

    parameter PHASE_INC = 8'b1000_0000; // Example for 125 kHz
    
    always @(posedge clk or posedge rst) begin
        if (rst || phase == 10'b11_1111_1111)
            phase <= 0;
        else
            phase <= phase + PHASE_INC;
    end

endmodule
```

### Phase to Amplitude Code
```verilog
module Phase_to_amp #(parameter N = 10) (
    input wire [N-1:0] phase,
    output reg [8:0] out
);

    always @(*) begin
        if (phase < 10) out = 200;
        else if (phase < 20) out = 213;
        else if (phase < 30) out = 225;
        else if (phase < 40) out = 237;
        else out = 0;
    end

endmodule
```

### Main Module Code
```verilog
module main #(parameter N = 10) (
    input wire clk,
    input wire reset,
    output wire [8:0] out,
    output wire [N-1:0] phase
);

    wire [N-1:0] phase;

    phase_accum accum_inst (
        .clk(clk),
        .rst(reset),
        .phase(phase)
    );

    Phase_to_amp phase_to_amp_inst (
        .phase(phase),
        .out(out)
    );

endmodule
```

## Testbench
The testbench verifies the system by applying test cases and storing output values.

```verilog
`timescale 1ns/1ps
module tb;

    parameter N = 10;
    reg clk = 0;
    reg reset = 0;
    wire [8:0] out;
    wire [9:0] phase;

    main #(.N(N)) dut (.clk(clk), .reset(reset), .out(out), .phase(phase));

    always #500 clk = ~clk;

    initial begin
        reset = 1;
        #500;
        reset = 0;
        #20000;
        $finish;
    end

endmodule
```

## MATLAB Plotting
The output file is read and plotted in MATLAB.

```matlab
fid = fopen('sad.txt', 'r');
data = textscan(fid, 'Time=%f ns, out=%d');
fclose(fid);
time = data{1};
out = data{2};
figure;
stairs(time, out, 'LineWidth', 1.5);
plot(time, out, 'LineWidth', 1.5);
xlabel('Time (ps)'); ylabel('Output');
title('Time vs. Output Plot DDS');
```

## Results
### 125 kHz Sine Wave
- **Simulation:** Generated using testbench.
- **Plot:** Visualized in MATLAB.

### 10 kHz Sine Wave
- **Simulation:** Generated using testbench.
- **Plot:** Visualized in MATLAB.

### 68 kHz Sine Wave
- **Simulation:** Generated using testbench.
- **Plot:** Visualized in MATLAB.

## Analysis
- The phase accumulator increments based on `PHASE_INC`.
- The lookup table ensures smooth waveform generation.
- Lower frequency signals retain better resolution compared to higher frequencies.

## How to Run
1. Compile Verilog modules using a simulator like ModelSim or Vivado.
2. Run the testbench to generate output data.
3. Use MATLAB to plot the results.

## Acknowledgments
This project is part of the Digital System Design (CE325) course at Habib University, instructed by Dr. Arsalan Javed.

---
**Contributors:** Sadiqah Mushtaq
