`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:38:15 03/19/2013 
// Design Name: 
// Module Name:    dispCycle 
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
module dispCycle(numIN, digit, AN, clock);

	// define I/O:

		input clock;  				 // 1kHZ clock
		input[15:0] numIN;
		output reg [3:0] digit;	
		output reg [3:0] AN;
	
		reg [1:0] cycle;  	 // to cycle the display
	
	// initializations
	
		initial
			begin
				AN = 0;
				digit = 0;
				cycle = 0;	
			end

	//  convert number to BCD

	wire[3:0] wThs, wHds, wTens, wOnes;

	BCDconvert1 BCD(.binary(numIN), .Ths(wThs), .Hds(wHds), .Tens(wTens), .Ones(wOnes));
				
	//  refresh cycle conditions:

		always @ (posedge clock) 
			begin
				
				cycle = cycle + 1;
				
				case (cycle)
				
				0: begin
						AN = 4'b1110;
						digit = wOnes;
					end
				
				1: begin
						AN = 4'b1101;
						digit = wTens;				
					end
				
				2: begin
						AN = 4'b1011;
						digit = wHds;				
					end
									
				3: begin
						AN = 4'b0111;
						digit = wThs;				
					end
				
				endcase
				
			end



endmodule
