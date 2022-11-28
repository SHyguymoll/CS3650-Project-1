module Instruction_Memory(
	instrn_address,
	instrn
    );

input [31:0] instrn_address; //5-bit address holds 8 instructions of 32-bit width
output wire [31:0] instrn;
reg [7:0] instrn_mem [31:0];

initial begin
$readmemh("instrn_memory.mem", instrn_mem);	//load initial values
end

assign instrn = {instrn_mem[instrn_address+3],instrn_mem[instrn_address+2],	
                 instrn_mem[instrn_address+1],instrn_mem[instrn_address]};

endmodule
