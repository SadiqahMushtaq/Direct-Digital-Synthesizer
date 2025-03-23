`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/24/2024 09:50:30 AM
// Design Name: 
// Module Name: Phase_to_amp
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module Phase_to_amp #(
    parameter N = 10
) (
    input wire [N-1:0] phase,
    output reg [8:0] out
);

// Lookup table
always @(*) begin
    if (phase >= 0 && phase < 10)
        out = 200;
    else if (phase >= 10 && phase < 20)
        out = 213;
    else if (phase >= 20 && phase < 30)
        out = 225;
    else if (phase >= 30 && phase < 40)
        out = 237;
    else if (phase >= 40 && phase < 50)
        out = 250;
    else if (phase >= 50 && phase < 60)
        out = 262;
    else if (phase >= 60 && phase < 70)
        out = 274;
    else if (phase >= 70 && phase < 80)
        out = 285;
    else if (phase >= 80 && phase < 90)
        out = 296;
    else if (phase >= 90 && phase < 100)
        out = 307;
    else if (phase >= 100 && phase < 110)
        out = 318;
    else if (phase >= 110 && phase < 120)
        out = 327;
    else if (phase >= 120 && phase < 130)
        out = 337;
    else if (phase >= 130 && phase < 140)
        out = 346;
    else if (phase >= 140 && phase < 150)
        out = 354;
    else if (phase >= 150 && phase < 160)
        out = 362;
    else if (phase >= 160 && phase < 170)
        out = 369;
    else if (phase >= 170 && phase < 180)
        out = 375;
    else if (phase >= 180 && phase < 190)
        out = 381;
    else if (phase >= 190 && phase < 200)
        out = 386;
    else if (phase >= 200 && phase < 210)
        out = 390;
    else if (phase >= 210 && phase < 220)
        out = 394;
    else if (phase >= 220 && phase < 230)
        out = 396;
    else if (phase >= 230 && phase < 240)
        out = 398;
    else if (phase >= 240 && phase < 250)
        out = 400;
    else if (phase >= 250 && phase < 260)
        out = 400;
    else if (phase >= 260 && phase < 270)
        out = 400;
    else if (phase >= 270 && phase < 280)
        out = 398;
    else if (phase >= 280 && phase < 290)
        out = 396;
    else if (phase >= 290 && phase < 300)
        out = 394;
    else if (phase >= 300 && phase < 310)
        out = 390;
    else if (phase >= 310 && phase < 320)
        out = 386;
    else if (phase >= 320 && phase < 330)
        out = 381;
    else if (phase >= 330 && phase < 340)
        out = 375;
    else if (phase >= 340 && phase < 350)
        out = 369;
    else if (phase >= 350 && phase < 360)
        out = 362;
    else if (phase >= 360 && phase < 370)
        out = 354;
    else if (phase >= 370 && phase < 380)
        out = 346;
    else if (phase >= 380 && phase < 390)
        out = 337;
    else if (phase >= 390 && phase < 400)
        out = 327;
    else if (phase >= 400 && phase < 410)
        out = 318;
    else if (phase >= 410 && phase < 420)
        out = 307;
    else if (phase >= 420 && phase < 430)
        out = 296;
    else if (phase >= 430 && phase < 440)
        out = 285;
    else if (phase >= 440 && phase < 450)
        out = 274;
    else if (phase >= 450 && phase < 460)
        out = 262;
    else if (phase >= 460 && phase < 470)
        out = 250;
    else if (phase >= 470 && phase < 480)
        out = 237;
    else if (phase >= 480 && phase < 490)
        out = 225;
    else if (phase >= 490 && phase < 500)
        out = 213;
    else if (phase >= 500 && phase < 510)
        out = 200;
    else if (phase >= 510 && phase < 520)
        out = 187;
    else if (phase >= 520 && phase < 530)
        out = 175;
    else if (phase >= 530 && phase < 540)
        out = 163;
    else if (phase >= 540 && phase < 550)
        out = 150;
    else if (phase >= 550 && phase < 560)
        out = 138;
    else if (phase >= 560 && phase < 570)
        out = 126;
    else if (phase >= 570 && phase < 580)
        out = 115;
    else if (phase >= 580 && phase < 590)
        out = 104;
    else if (phase >= 590 && phase < 600)
        out = 93;
    else if (phase >= 600 && phase < 610)
        out = 82;
    else if (phase >= 610 && phase < 620)
        out = 73;
    else if (phase >= 620 && phase < 630)
        out = 63;
    else if (phase >= 630 && phase < 640)
        out = 54;
    else if (phase >= 640 && phase < 650)
        out = 46;
    else if (phase >= 650 && phase < 660)
        out = 38;
    else if (phase >= 660 && phase < 670)
        out = 31;
    else if (phase >= 670 && phase < 680)
        out = 25;
    else if (phase >= 680 && phase < 690)
        out = 19;
    else if (phase >= 690 && phase < 700)
        out = 14;
    else if (phase >= 700 && phase < 710)
        out = 10;
    else if (phase >= 710 && phase < 720)
        out = 6;
    else if (phase >= 720 && phase < 730)
        out = 4;
    else if (phase >= 730 && phase < 740)
        out = 2;
    else if (phase >= 740 && phase < 750)
        out = 0;
    else if (phase >= 750 && phase < 760)
        out = 0;
    else if (phase >= 760 && phase < 770)
        out = 0;
    else if (phase >= 770 && phase < 780)
        out = 2;
    else if (phase >= 780 && phase < 790)
        out = 4;
    else if (phase >= 790 && phase < 800)
        out = 6;
    else if (phase >= 800 && phase < 810)
        out = 10;
    else if (phase >= 810 && phase < 820)
        out = 14;
    else if (phase >= 820 && phase < 830)
        out = 19;
    else if (phase >= 830 && phase < 840)
        out = 25;
    else if (phase >= 840 && phase < 850)
        out = 31;
    else if (phase >= 850 && phase < 860)
        out = 38;
    else if (phase >= 860 && phase < 870)
        out = 46;
    else if (phase >= 870 && phase < 880)
        out = 54;
    else if (phase >= 880 && phase < 890)
        out = 63;
    else if (phase >= 890 && phase < 900)
        out = 73;
    else if (phase >= 900 && phase < 910)
        out = 82;
    else if (phase >= 910 && phase < 920)
        out = 93;
    else if (phase >= 920 && phase < 930)
        out = 104;
    else if (phase >= 930 && phase < 940)
        out = 115;
    else if (phase >= 940 && phase < 950)
        out = 126;
    else if (phase >= 950 && phase < 960)
        out = 138;
    else if (phase >= 960 && phase < 970)
        out = 150;
    else if (phase >= 970 && phase < 980)
        out = 163;
    else if (phase >= 980 && phase < 990)
        out = 175;
    else if (phase >= 990 && phase < 1000)
        out = 187;
    else if (phase >= 1000 && phase < 1010)
        out = 200;
    else if (phase >= 1010 && phase < 1020)
        out = 213;
    else if (phase >= 1020 && phase <= 1023)
        out = 213;
    else
        out = 0; // Default value if phase is out of range
end


endmodule
