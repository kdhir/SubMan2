`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:26:33 04/09/2013 
// Design Name: 
// Module Name:    BCDconvert1 
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
module BCDconvert1(binary, Ths, Hds, Tens, Ones);

	// Define I/O's:
	
	input [15:0] binary;
	output reg [3:0] Ths, Hds, Tens, Ones;

		// Operations
	
	always @ (binary)
		begin
	Ths = binary/1000;
	Hds = (binary%1000)/100;
	Tens = (binary%100)/10;
	Ones = (binary%10);
		end

endmodule
