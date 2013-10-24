`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:29:15 03/19/2013 
// Design Name: 
// Module Name:    bin_to_seg 
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
module bin_to_seg(bin, seg);

	// define I/O:
	
		input [3:0] bin;
		output reg [6:0] seg;

	// initialization:
	
		initial seg=0;
	
	// conversion operation:
	
		always @ *
			begin
			
				case (bin)
					0:  seg = 7'b0000001;
					1:	 seg = 7'b1001111;
					2:  seg = 7'b0010010;
					3:  seg = 7'b0000110;
					4:  seg = 7'b1001100;
					5:  seg = 7'b0100100;
					6:  seg = 7'b0100000;
					7:  seg = 7'b0001111;
					8:  seg = 7'b0000000;
					9:  seg = 7'b0001100;
						endcase
			end

endmodule
