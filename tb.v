`timescale 1ns/1ps

module tb;

// Parameters
parameter N = 10;

// Signals
reg clk = 0;
reg reset = 0;
wire [8:0] out;
wire [9:0] phase;

// Instantiate main module
main #(
    .N(N)
) dut (
    .clk(clk),
    .reset(reset),
    .out(out),
    .phase(phase)
);

// Clock generation (1 MHz)
always #500 clk = ~clk; // Half period to get the full period (1 MHz)

// Reset generation
initial begin
    reset = 1;
    #500;
    reset = 0;
    #300000;
    $finish;
end

// Monitor output and write to file
integer f;
initial begin
    f = $fopen("125kHz.txt", "w");
    $dumpfile("dump.vcd");
    $dumpvars();
end

always @(posedge clk) begin
    $fdisplay(f, "Time=%0t ns, out=%d", $time, out);
end

endmodule