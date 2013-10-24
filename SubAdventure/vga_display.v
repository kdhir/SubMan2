`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Boston University
// Engineer: Zafar M. Takhirov
// 
// Create Date:    12:59:40 04/12/2011 
// Design Name: EC311 Support Files
// Module Name:    vga_display 
// Project Name: Lab5 / Lab6 / Project
// Target Devices: xc6slx16-3csg324
// Tool versions: XILINX ISE 13.3
// Description: 
//
// Dependencies: vga_controller_640_60
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module vga_display(rst, clk, R, G, B, HS, VS, R_control, G_control, B_control,
																UP, DN, LT, RT, outNUM, outPlace);
	
	input rst;	// global reset
	input clk;	// 100MHz clk
	
	// color inputs for a given pixel
	input [2:0] R_control, G_control;
	input [1:0] B_control; 
	
	// color outputs to show on display (current pixel)
	output reg [2:0] R, G;
	output reg [1:0] B;
	
	// Synchronization signals
	output HS;
	output VS;
	
	// controls:
	wire [10:0] hcount, vcount;	// coordinates for the current pixel
	wire blank;	// signal to indicate the current coordinate is blank
	wire figure;	// the figure you want to display
	
	//movement controls:
	input UP, DN, LT, RT;
	wire wUP, wDN, wLT, wRT;

		debounce dbUP(.clk(clk), .pButton(UP), .bState(wUP));
		debounce dbDN(.clk(clk), .pButton(DN), .bState(wDN));
		debounce dbLT(.clk(clk), .pButton(LT), .bState(wLT));
		debounce dbRT(.clk(clk), .pButton(RT), .bState(wRT));
	
	// for 7-Seg display:
	
		output [6:0] outNUM;
		output [3:0] outPlace;

	
	/////////////////////////////////////////////////////
	// Begin clock division
	parameter N = 2;	// parameter for clock division
	reg clk_25Mhz;
	reg [N-1:0] count;
	always @ (posedge clk) begin
		count <= count + 1'b1;
		clk_25Mhz <= count[N-1];
	end
	// End clock division
	/////////////////////////////////////////////////////
	
	// create a box:
	
	reg [15:0] xPos, yPos;
	
		initial xPos=320;
		initial yPos=240;

	assign figure = ~blank & (hcount >= (xPos-75) & hcount <=(xPos+75) & vcount >= (yPos-75) & vcount <= (yPos+75));

	
	//  move the box:
	
		 // state machine parameters //////////
		parameter S_IDLE = 0;
		parameter S_RT = 1;
		parameter S_LT = 2;
		parameter S_DN = 4;
		parameter S_UP = 8;
		
		reg [3:0] state, next_state;
			initial begin
			state = 0;
			next_state = 0;
			end
		 //////////////////////////////////////
	
		//--slow clock----------------------------------------
			wire s_clk;		
			slow_clock slowCLK(.clk(clk), .slow_clk(s_clk));
		//---------------------------------------------------	
	
	always @ (posedge s_clk) begin
		if(rst) begin
				xPos=320;
				yPos=240;
					end
		
		else begin
		state = next_state;

		case (state)
			S_IDLE:	next_state = {wUP,wDN,wLT,wRT};
			S_RT:	begin
					xPos = xPos+3;
					next_state = {wUP,wDN,wLT,wRT};
					end
			S_LT:	begin
					xPos = xPos-3;
					next_state = {wUP,wDN,wLT,wRT};
					end
			S_DN:	begin
					yPos = yPos+3;
					next_state = {wUP,wDN,wLT,wRT};
					end
			S_UP:	begin
					yPos = yPos-3;
					next_state = {wUP,wDN,wLT,wRT};
					end
			default: next_state = {wUP,wDN,wLT,wRT};
		endcase
				end
	end

	// Call driver
	vga_controller_640_60 vc(
		.rst(rst), 
		.pixel_clk(clk_25Mhz), 
		.HS(HS), 
		.VS(VS), 
		.hcounter(hcount), 
		.vcounter(vcount), 
		.blank(blank));
	
	
	// send colors:
	always @ (posedge clk) begin
		if (figure) begin	// if you are within the valid region
			R = R_control;
			G = G_control;
			B = B_control;
		end
		else begin	// if you are outside the valid region
			R = 0;
			G = 0;
			B = 0;
		end
	end
	
	////////  show position on 7-Seg diplay: 

	wire[3:0] wDigit;
	wire w1kHZ;
	
	//1kHz clock to drive diplay cycle
	clk_div1kHZ ck1K(.clk(clk), .clk_1kHZ(w1kHZ));
	
	//converts xPos to BCD, then updates the displayed number
	dispCycle posDisp(.numIN(xPos), .digit(wDigit), .AN(outPlace), .clock(w1kHZ));
	
	//formats the pos number to display in digit form
	bin_to_seg B_S(.bin(wDigit), .seg(outNUM));

endmodule
