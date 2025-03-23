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
![image](https://github.com/user-attachments/assets/65f42e34-b226-43f3-bbf8-ffba88d02b39)

### Phase Accumulator
The phase accumulator keeps track of the waveform's current position. It increments the phase at each clock cycle based on:

```
PHASE_INC = (2^N * Desired Frequency) / Clock Frequency
```

### Phase to Amplitude Converter
This module converts the phase accumulator's output into an amplitude value using a lookup table.

### Main Module
The main module integrates the phase accumulator and phase-to-amplitude converter to generate a sine wave output.

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
