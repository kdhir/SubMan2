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
module drawstart(x,y,startscreen,fig, twofig);

	input signed [10:0] x, y;
	input startscreen;
	output fig,twofig;
	wire sfig,ufig,bfig,mfig,afig,nfig,twofig;

	
	//drawit=~startscreen;

	//s,u,b
	assign sfig = (y>=200 & y<=240 & x>=180 & x<=204) & !(y>=208 & y<=216 & x>=188 & x<=204) & !(y>=224 & y<=232 & x>=180 & x<=196); 
	assign ufig = (y>=200 & y<=240 & x>=212 & x<=236) & !(y>=200 & y<=232 & x>=220 & x<=228);
	assign bfig = (y>=200 & y<=240 & x>=244 & x<=268) & !(y>=208 & y<=216 & x>=252 & x<=260) & !(y>=224 & y<=232 & x>=252 & x<=260) & !(y>=216 & y<=224 & x>=264 & x<=268);
	
	//m,a,n
	assign mfig = (y>=200 & y<=240 & x>=292 & x<=324) & !(y>=200 & y<=208 & x>=300 & x<=308 & y-200<=x-300) & !(y>=200 & y<=208 & x>=308 & x<=316 & y-208<=-x+308) & !(y>=216 & y<=240 & x>=300 & x<=316);
	assign afig = (y>=200 & y<=240 & x>=332 & x<=356) & !(y>=208 & y<=216 & x>=340 & x<=348) & !(y>=224 & y<=240 & x>=340 & x<=348);
	assign nfig = (y>=200 & y<=240 & x>=364 & x<=396) & !(y>=200 & y<=216 & x>=372 & x<=388 & y-200<=x-372) & !(y>=224 & y<=240 & x>=372 & x<=388 & y-216>=x-372);
	
	//2
	assign twofig = (y>=200 & y<=240 & x>=422 & x<=452) & !(y>=208 & y<=216 & x>=420 & x<=444) & !(y>=224 & y<=232 & x>=428 & x<=452);
	
   assign fig=(sfig | ufig | bfig | mfig | afig | nfig);
	
endmodule