`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:19:49 04/27/2013 
// Design Name: 
// Module Name:    drawstart 
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
module drawgameover(x,y,gameover,skull,eyes);
	input signed [10:0] x, y;
	input gameover;
	output skull, eyes;
	
	wire wholeface,sk1,sk2,sk3,sk4,sk5,sk6,sk7,sk8,sk9,sk10,sknose; //pieces of face (white)
	wire eye1,eye2; //eyes (red)
	
	//SKULL
	assign wholeface = (x>=204 & x<=372 & y>=284 & y<=332); //whole rectangle
	assign sk1 = (x>=308 & x<=316 & y>=300 & y<=308); //teeth
	assign sk2 = (x>=324 & x<=332 & y>=300 & y<=308);
	assign sk3 = (x>=340 & x<=348 & y>=300 & y<=308);
	assign sk4 = (x>=316 & x<=324 & y>=316 & y<=324);
	assign sk5 = (x>=332 & x<=340 & y>=316 & y<=324);
	assign sk6 = (x>=300 & x<=356 & y>=300 & y<=316); //space between jaws
	assign sk7 = (x>=284 & x<=300 & y>=292 & y<=332); //left mouth space
	assign sk8 = (x>=356 & x<=372 & y>=292 & y<=332); //right mouth space
	assign sk9 = (x>=300 & x<=308 & y>=316 & y<=332); //small left mouth space
	assign sk10 = (x>=348 & x<=356 & y>=316 & y<=332); //small right mouth space
	assign sknose = (x>=316 & x<=340 & y>=268 & y<=284); //nose
	//now draw whole skull
	assign skull = wholeface & !(sk1 | sk1 | sk2 | sk3 | sk4 | sk5 | sk6 | sk7 | sk8 | sk9 | sk10 | sknose); 
	
	//EYES
	assign eye1 = (x>=292 & x<=316 & y>=228 & y<=252);
	assign eye2 = (x>=340 & x<=364 & y>=228 & y<=252);
	//combine eyes
	assign eyes = eye1 | eye2;
	
endmodule