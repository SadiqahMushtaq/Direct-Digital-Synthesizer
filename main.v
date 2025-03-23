module main #(
    parameter N = 10
) (
    input wire clk,        // Master Clock
    input wire reset,      // Asynchronous Reset
    output wire [8:0] out, // Output Sine Wave
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