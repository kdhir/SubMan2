`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:35:41 04/16/2013 
// Design Name: 
// Module Name:    JetpackGame 
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
module JetpackGame(rst, start, clk, R, G, B, HS, VS, R_control, G_control,
																Down, outNUM, outPlace, hiscorebutton);
	
	input rst;	// global reset
	input clk;	// 100MHz clk
	input start;
	input hiscorebutton;
	
	// color inputs for a given pixel
	input [2:0] R_control, G_control;
	
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
	
	input Down;
	wire wDown;
		debounce dbDN(.clk(clk), .pButton(Down), .bState(wDown));

	// variables for 7-Seg display:
	
		output [6:0] outNUM;	
		output [3:0] outPlace;

	
	reg startscreen,collision;
	
	reg [7:0] scorespeed,scoremod;
	initial
		scoremod=100;

	/////////////////////////////////////////////////////
	// Begin clock division
	parameter N = 2;	// parameter for clock division
	reg clk_25Mhz;
	reg [N-1:0] count;
	always @ (posedge clk) begin
		count <= count + 1'b1;
		clk_25Mhz <= count[N-1];
	end
//	// End clock division
	/////////////////////////////////////////////////////
	
	// image coordiantes:
	
	reg signed [11:0] xPos, yPos, 
	
		bub1X, bub1Y, bub2X, bub2Y, bub3X, bub3Y, bub4X, bub4Y, bub5X, bub5Y,
		
		fish1X, fish1Y,
		
		fish2X, fish2Y,
	
		octo1X, octo1Y, octo2X, octo2Y, 
	
		waveX, waveY,
		
		rock1X, rock1Y,
		
		shark1X, shark1Y;
	
	// image initial positions:
		
		initial	begin
		
		collision = 0;
		flashCount = 0;
		score = 0;
		highScore = 0;
		waveMove = 0;
		game=0;
		startscreen=1;
		state=0;
		next_state=0;	
		
		xPos=100;
		yPos=240;
		
		waveX = 672;
		waveY = 30;
		
		bub1X = 500;
		bub1Y = 490+y1;
		
		bub2X = 400;
		bub2Y = 525+y2;
		
		bub3X = 300;
		bub3Y = 580+y1;
		
		bub4X = 200;
		bub4Y = 690+y2;
		
		bub5X = 100;
		bub5Y = 720+y1;
		
		fish1X = 730+x1;
		fish1Y = 75;
		
		fish2X = 750+x1;
		fish2Y = 150;
		
		octo1X = 780+x2;
		octo1Y = 250;
		
		rock1X = 690+x3;
		rock1Y = 310;
		
		shark1X = 640+x2;
		shark1Y = 370;
		
		end
	
	//image parts
//	wire [9:0] bs;
//	rando bubsize(clk,13,bs,8); //random speed for bubbles 
	wire wave1,wave2,wave3,wave4,wave5,wave6,wave7,wave8,wave9,wave10,wave11,moon,
			fish1, fishEyes1,
			fish2, fishEyes2,
		  octopus1, octoEyes1,
		  rock1,
		  shark1, sharkEyes1;//,skullfig,skulleyesfig;
	
	//----image shape conditions:---------------------------------------------------------
	
	
			//--- main character: -----
	assign submarine = ~blank & 																						
				((hcount >= xPos & hcount <= xPos+30 & vcount >= yPos & vcount <= yPos+10) |		// hull
				(hcount >= xPos+5 & hcount <= xPos+15 & vcount >= yPos-4 & vcount <= yPos) |		// top
				(hcount >= xPos+30 & hcount <= xPos+32 & vcount >= yPos+1 & vcount <= yPos+9)|	// nose
				(hcount >= xPos+30 & hcount <= xPos+32 & vcount >= yPos+1 & vcount <= yPos+9) |
				(hcount >= xPos+32 & hcount <= xPos+34 & vcount >= yPos+2 & vcount <= yPos+8) |
				(hcount >= xPos+34 & hcount <= xPos+36 & vcount >= yPos+3 & vcount <= yPos+7) |		
				(hcount >= xPos-5 & hcount <= xPos & vcount >= yPos+2 & vcount <= yPos+8)) ;		// back
				
	
		//-- waves: ----
	wire signed [11:0]nextWave1, nextWave2, nextWave3, nextWave4, nextWave5, nextWave6, 
						nextWave7 ,nextWave8, nextWave9, nextWave10, nextWave11;
	
	drawWaves wv1(blank, hcount, vcount, waveX, waveY, wave1, nextWave1);
	drawWaves wv2(blank, hcount, vcount, nextWave1, waveY, wave2, nextWave2);
	drawWaves wv3(blank, hcount, vcount, nextWave2, waveY, wave3, nextWave3);
	drawWaves wv4(blank, hcount, vcount, nextWave3, waveY, wave4, nextWave4);
	drawWaves wv5(blank, hcount, vcount, nextWave4, waveY, wave5, nextWave5);
	drawWaves wv6(blank, hcount, vcount, nextWave5, waveY, wave6, nextWave6);
	drawWaves wv7(blank, hcount, vcount, nextWave6, waveY, wave7, nextWave7);
	drawWaves wv8(blank, hcount, vcount, nextWave7, waveY, wave8, nextWave8);
	drawWaves wv9(blank, hcount, vcount, nextWave8, waveY, wave9, nextWave9);
	drawWaves wv10(blank, hcount, vcount, nextWave9, waveY, wave10, nextWave10);
	drawWaves wv11(blank, hcount, vcount, nextWave10, waveY, wave11, nextWave11);
	
	
//water
	
	assign water = ~blank & (hcount>=0 & hcount<=640 & vcount>=30 & vcount<=480);
	
//draw startscreen and gameover screen
	
//draw bubbles
	drawBubble bub1(blank, hcount, vcount, bub1X, bub1Y, bubble1);
	drawBubble bub2(blank, hcount, vcount, bub2X, bub2Y, bubble2);
	drawBubble bub3(blank, hcount, vcount, bub3X, bub3Y, bubble3);
	drawBubble bub4(blank, hcount, vcount, bub4X, bub4Y, bubble4);
	drawBubble bub5(blank, hcount, vcount, bub5X, bub5Y, bubble5);
	assign moon = ~blank & (((hcount-400)*(hcount-400) + (vcount-0)*(vcount-0)) <= 1224);
	
// draw rocks
	drawRock(blank, hcount, vcount, rock1X, rock1Y, rock1);
	
// draw fish	
	drawFish fsh1(blank, hcount, vcount, fish1X, fish1Y, fish1, fishEyes1);
	drawFish fsh2(blank, hcount, vcount, fish2X, fish2Y, fish2, fishEyes2);

// draw octo
	drawOcto oct1(blank, hcount, vcount, octo1X, octo1Y, octopus1, octoEyes1);
	
// draw shark
	drawShark sk1(blank, hcount, vcount, shark1X, shark1Y, shark1, sharkEyes1);
																			
	//---------------------------------------------------------------------------------------------
	
		
	//--slow clock --------------------------------------
		reg s_clk;
		always @ (posedge clk)begin
			if (vcount<262)
				s_clk=1;
			else
				s_clk=0;
		end
//*******************************************************************************************************	
// game play data registers:
//********************************************************************************************************

	//reg newGame;			// used as Boolean for a New Game or Game Over
	reg[5:0] flashCount;			// counter to blink the guy on and off if you hit something
	reg[4:0] scoreCounter;		// counter for when to increment score
	reg[10:0] score;				// keeps track of your score
	reg[10:0] highScore;			// remembers high score if you play a bunch of times
	reg[1:0] waveMove;			// counter to slowly move waves
	
	reg [5:0] riseVeloc, diveVeloc;	//for submarine motion control 

	reg game;
	
	initial begin
		collision = 0;
		flashCount = 0;
		score = 0;
		highScore = 0;
		waveMove = 0;
		game=0;
		startscreen=1;
	end
//********************************************************************************************************


//********************************************************************************************************
// state machine parameters:
//********************************************************************************************************
		parameter S_IDLE = 0;
		parameter S_DIVE = 1;
		parameter S_GameOver = 2;
//		parameter S_NewGame = 7;
		
		reg [2:0] state, next_state;
			initial begin
			state=0;
			next_state=0;
			end

//********************************************************************************************************




//****************************************************************************************
//------GAME STATE MACHINE:---------------------------------------------------------------
//****************************************************************************************
	
	//random number gens
	wire [9:0] y1,y2,y3,x1,s1,b1,b2,b3,b4;
	rando r1(clk,24048,y1,395); //random fish y-positions
	rando r2(clk,3008,y2,395); //random fish y-positions
	rando r3(clk,15987,y3,395); //random fish y-positions
	rando r4(clk,74503,x1,50); //random fish x-offset
	rando r5(clk,1300,x2,50); //random fish x-offset
	rando r6(clk,55000,x3,50); //random fish x-offset
//	rando bo1(clk,53133,b1,400); //random  bubble-offset
//	rando bo2(clk,45234,b2,400); //random  bubble-offset
//	rando bo3(clk,12734,b3,400); //random  bubble-offset
//	rando bo4(clk,8917,b4,400); //random  bubble-offset
//	rando bo5(clk,21340,b5,400); //random  bubble-offset
	rando speed1(clk,10,s1,6); //random speed for enemies 
	rando speed2(clk,41,s2,3); //random speed for bubbles 
	
	reg [7:0] fish1speed,fish2speed,shark1speed,octospeed,rockspeed, bubspeed1, bubspeed2,bubspeed3,bubspeed4,bubspeed5;
	
////////////////////////MAIN LOOP//////////////////////////////
	
	always @ (posedge s_clk) begin

// collision conditions:---(sees if your position is within any of the monsters or objects)---						
		
		if ((xPos>(fish1X-100) & xPos<fish1X	& (yPos>(fish1Y-35) & yPos<(fish1Y+35)))	|
			(xPos>(fish2X-100) & xPos<fish2X	& (yPos>(fish2Y-35) & yPos<(fish2Y+35)))	|
			(xPos>(octo1X-85) & xPos<octo1X	& (yPos>(octo1Y-35) & yPos<(octo1Y+60)))	  |
			(xPos>(rock1X-35) & xPos<(rock1X+10) & yPos>(rock1Y-10) & yPos<(rock1Y+35)) | 
			((xPos+32)>(shark1X-55) & (xPos+32)<(shark1X) & (yPos-10)>(shark1Y-10) & yPos<(shark1Y+10))) 
			begin
		
				collision = 1; //if collision, stop movement of fish/sub
				game=0; //go to game over screen
			end
			
		
		state = next_state;		// updates the state every slow clock
		
		if (score%scoremod==0) begin
//			if (score%150==0)
//				scoremod=scoremod-50;
			if (scorespeed<5)
				scorespeed=scorespeed+1;
		end
		
//------------------------------------------if not collision-----------------------------------------------//
		//-----objects motion continues until Game Over---------
		if (~collision & game) 
			begin
				scoreCounter = scoreCounter+1;    	// timer to increment your score	
				if (scoreCounter == 6)begin      	//	at 10 points per second
					scoreCounter = 0;
					score = score+1;
				end
//////////////////	FISH motion	/////////////////////////////////////////////
				if (fish1X>0)
						fish1X = fish1X-(fish1speed+1);
				else
					begin
					fish1X = 740+x1;
					fish1Y = y1+70;
					fish1speed = s1+scorespeed;
					end
					
				if (fish2X>0)
						fish2X = fish2X-(fish2speed+1);
				else
					begin
					fish2X = 740+x1;
					fish2Y = y1+70;
					fish2speed = s1+scorespeed;
					end
/////////////////// SHARK motion //////////////////////////			
					if (shark1X>0)
						shark1X=shark1X-(shark1speed+2);
					else begin
						shark1X=700+x2;
						shark1Y=y2+70;
						shark1speed = s1+scorespeed;
					end
//////////////////	BUBBLE motion	/////////////////////////////////////////////							
				if (bub1Y>50)
					bub1Y = bub1Y-(bubspeed1+1);
				else
					begin
						bub1Y = 480+y1;
						bubspeed1 = s2;
					end
					
				if (bub2Y>50)
					bub2Y = bub2Y-(bubspeed2+1);
				else
					begin
						bub2Y = 480+y2;
						bubspeed2 = s2;
					end
					
				if (bub3Y>50)
					bub3Y = bub3Y-(bubspeed3+1);
				else
					begin
						bub3Y = 480+y1;
						bubspeed3 = s2;
					end
					
				if (bub4Y>50)
					bub4Y = bub4Y-(bubspeed4+1);
				else
					begin
						bub4Y = 480+y2;
						bubspeed4 = s2;
					end

				if (bub5Y>50)
					bub5Y = bub5Y-(bubspeed5+1);
				else
					begin
						bub5Y = 480+y1;
						bubspeed5 = s2;
					end	
//////////////////	OCT motion	/////////////////////////////////////////////							
				if (octo1X > 0)
						octo1X = octo1X - (octospeed+1);
				else begin
					octo1X = 740+x1;
					octo1Y = y2+70;
					octospeed = s1+scorespeed;
					end

//////////////////	ROCK motion	/////////////////////////////////////////////					
				if (rock1X>0)
						rock1X = rock1X - (rockspeed+1);
				else begin
					rock1X=680+x1;
					rock1Y = y3+70;
					rockspeed = s1+scorespeed;
					end
				
		end
			
////////////////// WAVE motion	(always moving) /////////////////////////////						
		if (waveX==608)
			waveX=672;
		else if (waveMove==2)begin
			waveMove=0;
			waveX=waveX-1;
			end
		else
			waveMove=waveMove+1;
			
	//-------next state conditions based on user controls-------------//

	if (game) begin //if not at start screen, play game
		
		//start state machine
		case (state)
			S_IDLE: begin   // when button is not pushed
					diveVeloc=0;

					if (riseVeloc<32)
					riseVeloc=riseVeloc+1'b1; //add to rise time

					if (yPos>70) //if not already at the top, rise up
					yPos=yPos-riseVeloc/7;

					next_state = {collision, wDown};
					end
				
			S_DIVE: begin 	// when button is pushed
//				newGame=0;
				riseVeloc=0;

				if (diveVeloc<32)
				diveVeloc=diveVeloc+1'b1; //add to fall time

				if (yPos<466)
				yPos=yPos+diveVeloc/7;

				next_state = {collision, wDown};
				end

			S_GameOver: begin
				// have a display screen for the Game Over...
					highScore = score;
					flashCount = flashCount + 1;
					next_state = {collision, wDown}; //stay in s_gameover

					if (wDown) //if player presses down, leave S.M., go to start screen
						game=0;
					end
					
			2'b11: begin //if died while pressing down, still go to game over
				next_state=3'b10;
			end

		endcase

	end
	
	//---------------START SCREEN-------------------	
	//game=0, not playing game
		
	if (score>highScore)
		highScore=score;

	if (start) begin //if reset/start button is pressed
		
		collision = 0;
		flashCount = 0;
		score = 0;
		scorespeed = 0;
		waveMove = 0;
		game=0;
		startscreen=1;
		state=0;
		scorespeed = 0;
		next_state=0;	
		
		//reset all positions
		xPos=100;
		yPos=240;
			
		waveX = 672;
		waveY = 30;
		
		fish1X = 730+x1;
		fish1Y = y1+100;
		
		fish2X = 750+x1;
		fish2Y = y2+150;
		
		octo1X = 760+x2;
		octo1Y = y3+150;
		
		rock1X = 680+x3;
		rock1Y = y1+275;
		
		shark1X = 700;
		shark1Y = y1+300;
		
		bub1X = 500;
		bub1Y = 490;
		
		bub2X = 400;
		bub2Y = 495;
		
		bub3X = 300;
		bub3Y = 500;
		
		bub4X = 200;
		bub4Y = 510;
		
		bub5X = 100;
		bub5Y = 480;
	end

	if (game==0 & wDown) //if not playing and you press down, go back to game
		begin
			game=1;
			collision = 0;
			startscreen=0;
		end
end

//----------------------------------------------------------------------------------------
//****************************************************************************************
//****************************************************************************************


	// Call VGA driver
	vga_controller_640_60 vc(
		.rst(rst), 
		.pixel_clk(clk_25Mhz), 
		.HS(HS), 
		.VS(VS), 
		.hcounter(hcount), 
		.vcounter(vcount), 
		.blank(blank));
		
	// Call Sprites--------------
	//***** Title Screen **** //
	wire [2:0] titleR, titleG;
	wire [1:0] titleB;

	// memory interface:
		wire [14:0] titleAddr;
		wire [7:0] titleData;	
	
	StartScreenMEM title1(
	  .clka(clk_25Mhz), // input pixel clk
	  .addra(titleAddr), // input [14 : 0] address
	  .douta(titleData) // output [7 : 0] data out
		);
		
	TitleSprite(hcount, vcount, titleData, titleAddr, titleR, titleG, titleB);
	//***********************//
	
	//******** Game Over Screen ********//
	wire [2:0] gameOvR,gameOvG;
	wire [1:0] gameOvB;

	// memory interface:
		wire [14:0] gameOvAddr;
		wire [7:0] gameOvData;	
	
	GameOverMEM GO1(
	  .clka(clk_25Mhz), // input pixel clk
	  .addra(gameOvAddr), // input [14 : 0] address
	  .douta(gameOvData) // output [7 : 0] data out
		);
		
	GameOverSprite(hcount, vcount, gameOvData, gameOvAddr, gameOvR, gameOvG, gameOvB);

	//**********************************//
	//---------------------------
	
	
	//----conditions for drawing images and what colors to make them:--------------
	always @ (posedge clk) begin
	if (startscreen & ((hcount >= 140 & hcount <= 500) &
				   (vcount >= 210 & vcount < 270)) &
				   ({titleR,titleG,titleB} != 8'b11111111))
		 begin
			R = titleR;
			G = titleG;
			B = titleB;
			end
	else if (collision & ((hcount >= 273 & hcount <= 373) &
				   (vcount >= 300 & vcount <=390)) &
				   ({gameOvR,gameOvG,gameOvB} != 8'b11111111))
		 begin
			R = gameOvR;
			G = gameOvG;
			B = gameOvB;
			end
		else if (submarine)	begin   //  items listed in order of display priority 
			if (collision) begin
				if (~startscreen) begin
					R = 3'b111;
					G = 3'b001;
					B = 2'b00;	
				end
			end
			else 
				begin
					R = 3'b111;
					G = 3'b110;
					B = 2'b01;
				end
		end
		else if (moon) begin
			R = 3'b111;
			G = 3'b111;
			B = 2'b11;
		end	
		else if (fishEyes1 | fishEyes2 ) begin
			R = 3'b111;
			G = 3'b010;
			B = 2'b00;		
		end
		else if (fish1 | fish2) begin
			R = 3'b111;
			G = 3'b010;
			B = 2'b11;		
		end
		else if (octoEyes1)begin
			R = 3'b111;
			G = 3'b000;
			B = 2'b01;
		end		
		else if (sharkEyes1) begin
				R = 3'b100;
				G = 3'b000;
				B = 2'b01;
		end
		else if (shark1) begin
				R = 3'b110;
				G = 3'b110;
				B = 2'b11;
		end
		else if (octopus1) begin
			R = 3'b001;
			G = 3'b111;
			B = 2'b11;		

		end
		else if (bubble1 | bubble2 | bubble3 | bubble4 | bubble5)begin
			R = 3'b001;
			G = 3'b110;
			B = 2'b11;
		end
		else if (wave1 | wave2 | wave3 | wave4 | wave5 | wave6 |
									wave7 | wave8 | wave9 | wave10 | wave11) begin
			R = 8'b000;
			G = 8'b000;
			B = 8'b000;
		end	
		else if (rock1) begin
				R = 3'b011;
				G = 3'b110;
				B = 2'b01;
		end	
		else if (water) begin
			R = 3'b000;
			G = 3'b000;
			B = 2'b11;
		end
		else begin	// if you are outside the valid region
			R = 0;
			G = 0;
			B = 0;
		end
	end
	//---------------------------------------------------------------------------
	
	////////  show score on 7-Seg diplay: 

	wire[3:0] wDigit;
	wire w1kHZ;
	
	//1kHz clock to drive diplay cycle
	clk_div1kHZ ck1K(.clk(clk), .clk_1kHZ(w1kHZ));
	
	reg [10:0] whichscore;
	always @ (posedge clk) begin
		if (hiscorebutton)
			whichscore=highScore;
		else
			whichscore=score;
	end
	
	//converts xPos to BCD, then updates the displayed number
	dispCycle scoreDisp(.numIN(whichscore), .digit(wDigit), .AN(outPlace), .clock(w1kHZ));
	
	//formats the pos number to display in digit form
	bin_to_seg B_S(.bin(wDigit), .seg(outNUM));

endmodule
