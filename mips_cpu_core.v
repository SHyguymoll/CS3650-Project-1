module MIPS_Cpu_Core #(
    opcode,
    reg_dest,
    alu_op,

)

Alu_Top alu_top (
    .opcode (opcode),
    func_field,
    A,
    B,
    result,
    zero
)


endmodule