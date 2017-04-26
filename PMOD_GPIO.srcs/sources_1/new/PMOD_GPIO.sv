`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.10.2016 11:12:39
// Design Name: 
// Module Name: PMOD_GPIO
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


module PMOD_GPIO(
	input			PMOD_I1,
	input			PMOD_I2,
	input			PMOD_I3,
	input			PMOD_I4,
	input			PMOD_I7,
	input			PMOD_I8,
	input			PMOD_I9,
	input			PMOD_I10,
	output			PMOD_O1,
	output			PMOD_O2,
	output			PMOD_O3,
	output			PMOD_O4,
	output			PMOD_O7,
	output			PMOD_O8,
	output			PMOD_O9,
	output			PMOD_O10,
	output			PMOD_T1,
	output			PMOD_T2,
	output			PMOD_T3,
	output			PMOD_T4,
	output			PMOD_T7,
	output			PMOD_T8,
	output			PMOD_T9,
	output			PMOD_T10,

	output	[3:0]	GPIO_TOP_I,
	output	[3:0]	GPIO_BOTTOM_I,
	input	[3:0]	GPIO_TOP_O,
	input	[3:0]	GPIO_BOTTOM_O,
	input	[3:0]	GPIO_TOP_T,
	input	[3:0]	GPIO_BOTTOM_T
    );
    parameter Top_Row_Interface = "True";
    parameter Bottom_Row_Interface = "True";

	generate
		if (Top_Row_Interface)
		begin
			assign GPIO_TOP_I = {PMOD_I4, PMOD_I3,PMOD_I2,PMOD_I1};
			assign {PMOD_O4, PMOD_O3, PMOD_O2, PMOD_O1} = GPIO_TOP_O;
			assign {PMOD_T4, PMOD_T3, PMOD_T2, PMOD_T1} = GPIO_TOP_T;
		end

		if (Bottom_Row_Interface)
		begin
			assign GPIO_BOTTOM_I = {PMOD_I10, PMOD_I9,PMOD_I8,PMOD_I7};
			assign {PMOD_O10, PMOD_O9, PMOD_O8, PMOD_O7} = GPIO_BOTTOM_O;
			assign {PMOD_T10, PMOD_T9, PMOD_T8, PMOD_T7} = GPIO_BOTTOM_T;
		end
	endgenerate
endmodule
