`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:00:51 04/25/2013 
// Design Name: 
// Module Name:    rando 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module rando(clk,seed,out,range);

input clk;
input [10:0] seed;
input [10:0] range;
output [8:0] out;
reg [63:0] x;
reg fb;

initial x=seed;

always @ (posedge clk) begin
	fb=x[15]^x[13]^x[12]^x[10]+1;
	x={x[62:0],fb};
end

assign out=x[8:0]%range;

endmodule 