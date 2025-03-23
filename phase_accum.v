module phase_accum #(
    parameter N = 10
) (
    input wire clk,
    input wire rst,
    output reg [N-1:0] phase
);

// 2^N x your desired frequency / clock frequency

// taking desired frequency as 125 kHz and clock frequency as 1 MHz (max)
parameter PHASE_INC = 8'b1000_0000; // 128

// desired freq = 10 kHz and clock frequency as 1 MHz (min)
//parameter PHASE_INC = 8'b0000_1011; // 11

// desired freq = 10 kHz and clock frequency as 1 MHz (min)
//parameter PHASE_INC = 8'b0000_1011; // 11

// desired freq = 30 kHz and clock frequency as 1 MHz (min)
//parameter PHASE_INC = 8'b0001_1111; // 31

// Initialize phase accumulator register
always @(posedge clk or posedge rst) begin
    if (rst || phase == 10'b11_1111_1111)
        phase <= 0;
    else
        phase <= phase + PHASE_INC; // Increment phase accumulator
end

endmodule
