`include "processortop.v"

module processor_top_tb;

// Inputs
reg clk;
reg rst_n;

// Instantiate the Unit Under Test (UUT)
Processor_Top uut(
    .clk(clk),
    .rst_n(rst_n)
);

always #5 clk = ~clk;

initial begin
    $dumpfile("processor_top_tb.vcd");
    $dumpvars(0, processor_top_tb);
    clk = 1'b1;
    rst_n = 1'b0;
    #30
    rst_n = 1'b1;
    #70
    $finish;
end

endmodule