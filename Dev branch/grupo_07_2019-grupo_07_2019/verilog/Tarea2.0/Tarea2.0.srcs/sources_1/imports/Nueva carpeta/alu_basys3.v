`timescale 1ns / 1ps

module top_data_alu(
    input [15:0] data,
    //input push,
    input reset,
    input [2:0] load,
    output [15:0] alu_out,
    output zrO,
    output ngO
    );

wire [6:0] opcode;    
wire [15:0] x, y;

data my_data(
        .data(data),
        //.push(push), //BTND
        .reset(reset),
        .load(load),
        .x(x), 
        .y(y),
        .opcode(opcode)
        );
        
ALU_case ALU(
            .c(opcode),
            .x(x),
            .y(y),
            .out(alu_out),
            .zr(zrO),
            .ng(ngO)
            );

endmodule

module data(
    input [15:0] data,
    //input push, //BTND
    input reset,
    input [2:0] load,
    output reg [15:0] x, y,
    output reg [6:0] opcode
    );
    
wire load_x, load_y, load_opcode;

//assign load_x = load[0];  //BTNL  
//assign load_y = load[1];  //BTNR
//assign load_opcode = load[2]; //BTNU
       
/*always @(*)
if (reset)
begin
    x <= 0;
    y <= 0;
    opcode <= 0;
end
else if (load_x)
    x <= data;
else if (load_y)
    y <= data;
else if (load_opcode)
    opcode <= data[5:0];
*/

always @(*)
if (reset)
    begin
    x = 0;
    y = 0;
    opcode = 0;
    end
else
    begin
        case (load)
        3'b001 : x = data;
        3'b010 : y = data;
        3'b100 : opcode = data[6:0];
        endcase
    end
       
endmodule


module ALU_case(
    input [1:7] c,
    input [15:0] x,
    input [15:0] y,
    output reg [15:0] out,
    output reg zr,
    output reg ng
    );
    
always @ (*)
    begin     
    case (c) 
      7'b1010010 : out = 16'h0000; 
      7'b1111011 : out = 16'h0001; 
      7'b1110010 : out = 16'hffff;
      7'b0011000 : out = x;
      7'b1100000 : out = y;
      7'b0011001 : out = ~x;
      7'b1100001 : out = ~y;
      7'b0011011 : out = ~(x + 16'hffff);
      7'b1100011 : out = ~(y + 16'hffff);
      7'b0111011 : out = ~(~x + 16'hffff);
      7'b1101011 : out = ~(~y + 16'hffff);
      7'b0011010 : out = x + 16'hffff;
      7'b1100010 : out = y + 16'hffff;
      7'b0000010 : out = x + y;
      7'b0100011 : out = ~(~x + y);
      7'b0001011 : out = ~(x + ~y);
      7'b0000000 : out = x&y;
      7'b0101001 : out = ~(~x & ~y); //x|y
      7'b0000110 : out = x * y;
      7'b0100111 : out = x / y;
      7'b0101101 : out = ~(~x * y);
      7'b0001111 : out = ~(x * ~y);
      7'b0000100 : out = ~(x / y);
            
     endcase
     end
     always@(zr, ng)
        begin
        zr = (out == 0) ? 1'b1 : 1'b0;
        ng = (out[15] == 1'b1) ? 1'b1 : 1'b0;
        end

endmodule
