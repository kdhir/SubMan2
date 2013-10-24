`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   21:02:38 04/18/2013
// Design Name:   slow_clock
// Module Name:   X:/My Documents/ec311 Lab/JetpackGame/clk_div_test.v
// Project Name:  JetpackGame
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: slow_clock
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module clk_div_test;

	// Inputs
	reg clk;

	// Outputs
	wire slow_clk;

	// Instantiate the Unit Under Test (UUT)
	slow_clock uut (
		.clk(clk), 
		.slow_clk(slow_clk)
	);

	initial begin
		// Initialize Inputs
		clk = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
	initial begin
	
	forever #1 clk = ~clk;
   
	end
   
endmodule

