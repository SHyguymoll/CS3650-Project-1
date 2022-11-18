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
    //determine what each of them will do in this case
    
    //ex:
    // if RegDst == 0
        //register destination comes from bits 20-16
    // else
        //register destination comes from bits 15-11


endmodule