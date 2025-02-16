module instmem(instr_addr,instruction);
input [31:0] instr_addr;
output [31:0] instruction;
reg[31:0] instruction;
reg [7:0] ram [15:0];
initial
  begin
    ram[0]=8'b11100011;
    ram[1]=8'b00001010;
    ram[2]=8'b01000010;
    ram[3]=8'b11111110;
  end
    always @(instr_addr)
instruction = {ram[instr_addr+3],ram[instr_addr+2],ram[instr_addr+1],ram[instr_addr]};
endmodule
