module CHIP( 	
	// Inpt signals
	clk,
	rst_n,
	in_valid_d,
	in_valid_t,
	in_valid_w1,
	in_valid_w2,
	data_point,
	target,
	weight1,
	weight2,
	// Output signals
	out_valid,
	out
);
input  clk, rst_n, in_valid_d, in_valid_t, in_valid_w1, in_valid_w2;
input [31:0] data_point, target;
input [31:0] weight1, weight2;
output out_valid;
output  [31:0] out;

wire   C_clk;
wire   C_rst_n;
wire   C_in_valid_d,C_in_valid_t,C_in_valid_w1,C_in_valid_w2;
wire  [31:0] C_data_point,C_target,C_weight1,C_weight2;

wire  C_out_valid;
wire  [31:0] C_out;

wire BUF_clk;
CLKBUFX20 buf0(.A(C_clk),.Y(BUF_clk));

NN I_NN(
	.clk(BUF_clk),
	.rst_n(C_rst_n),
	.in_valid_d(C_in_valid_d),
	.in_valid_t(C_in_valid_t),
	.in_valid_w1(C_in_valid_w1),
	.in_valid_w2(C_in_valid_w2),
	.data_point(C_data_point),
	.target(C_target),
	.weight1(C_weight1),
	.weight2(C_weight2),
	.out_valid(C_out_valid),
	.out(C_out)
);

// Input Pads
PDUSDGZ I_CLK(.PAD(clk), .C(C_clk));
PDUSDGZ I_RESET(.PAD(rst_n), .C(C_rst_n));
PDUSDGZ I_IN_VALID_D(.PAD(in_valid_d), .C(C_in_valid_d));
PDUSDGZ I_IN_VALID_T(.PAD(in_valid_t), .C(C_in_valid_t));
PDUSDGZ I_IN_VALID_W1(.PAD(in_valid_w1), .C(C_in_valid_w1));
PDUSDGZ I_IN_VALID_W2(.PAD(in_valid_w2), .C(C_in_valid_w2));
PDUSDGZ I_D_P0  (.PAD(data_point[0]),  .C(C_data_point[0]));
PDUSDGZ I_D_P1  (.PAD(data_point[1]),  .C(C_data_point[1]));
PDUSDGZ I_D_P2  (.PAD(data_point[2]),  .C(C_data_point[2]));
PDUSDGZ I_D_P3  (.PAD(data_point[3]),  .C(C_data_point[3]));
PDUSDGZ I_D_P4  (.PAD(data_point[4]),  .C(C_data_point[4]));
PDUSDGZ I_D_P5  (.PAD(data_point[5]),  .C(C_data_point[5]));
PDUSDGZ I_D_P6  (.PAD(data_point[6]),  .C(C_data_point[6]));
PDUSDGZ I_D_P7  (.PAD(data_point[7]),  .C(C_data_point[7]));
PDUSDGZ I_D_P8  (.PAD(data_point[8]),  .C(C_data_point[8]));
PDUSDGZ I_D_P9  (.PAD(data_point[9]),  .C(C_data_point[9]));
PDUSDGZ I_D_P10 (.PAD(data_point[10]), .C(C_data_point[10]));
PDUSDGZ I_D_P11 (.PAD(data_point[11]), .C(C_data_point[11]));
PDUSDGZ I_D_P12 (.PAD(data_point[12]), .C(C_data_point[12]));
PDUSDGZ I_D_P13 (.PAD(data_point[13]), .C(C_data_point[13]));
PDUSDGZ I_D_P14 (.PAD(data_point[14]), .C(C_data_point[14]));
PDUSDGZ I_D_P15 (.PAD(data_point[15]), .C(C_data_point[15]));
PDUSDGZ I_D_P16 (.PAD(data_point[16]), .C(C_data_point[16]));
PDUSDGZ I_D_P17 (.PAD(data_point[17]), .C(C_data_point[17]));
PDUSDGZ I_D_P18 (.PAD(data_point[18]), .C(C_data_point[18]));
PDUSDGZ I_D_P19 (.PAD(data_point[19]), .C(C_data_point[19]));
PDUSDGZ I_D_P20 (.PAD(data_point[20]), .C(C_data_point[20]));
PDUSDGZ I_D_P21 (.PAD(data_point[21]), .C(C_data_point[21]));
PDUSDGZ I_D_P22 (.PAD(data_point[22]), .C(C_data_point[22]));
PDUSDGZ I_D_P23 (.PAD(data_point[23]), .C(C_data_point[23]));
PDUSDGZ I_D_P24 (.PAD(data_point[24]), .C(C_data_point[24]));
PDUSDGZ I_D_P25 (.PAD(data_point[25]), .C(C_data_point[25]));
PDUSDGZ I_D_P26 (.PAD(data_point[26]), .C(C_data_point[26]));
PDUSDGZ I_D_P27 (.PAD(data_point[27]), .C(C_data_point[27]));
PDUSDGZ I_D_P28 (.PAD(data_point[28]), .C(C_data_point[28]));
PDUSDGZ I_D_P29 (.PAD(data_point[29]), .C(C_data_point[29]));
PDUSDGZ I_D_P30 (.PAD(data_point[30]), .C(C_data_point[30]));
PDUSDGZ I_D_P31 (.PAD(data_point[31]), .C(C_data_point[31]));
PDUSDGZ I_D_T0  (.PAD(target[0]),  .C(C_target[0]));
PDUSDGZ I_D_T1  (.PAD(target[1]),  .C(C_target[1]));
PDUSDGZ I_D_T2  (.PAD(target[2]),  .C(C_target[2]));
PDUSDGZ I_D_T3  (.PAD(target[3]),  .C(C_target[3]));
PDUSDGZ I_D_T4  (.PAD(target[4]),  .C(C_target[4]));
PDUSDGZ I_D_T5  (.PAD(target[5]),  .C(C_target[5]));
PDUSDGZ I_D_T6  (.PAD(target[6]),  .C(C_target[6]));
PDUSDGZ I_D_T7  (.PAD(target[7]),  .C(C_target[7]));
PDUSDGZ I_D_T8  (.PAD(target[8]),  .C(C_target[8]));
PDUSDGZ I_D_T9  (.PAD(target[9]),  .C(C_target[9]));
PDUSDGZ I_D_T10 (.PAD(target[10]), .C(C_target[10]));
PDUSDGZ I_D_T11 (.PAD(target[11]), .C(C_target[11]));
PDUSDGZ I_D_T12 (.PAD(target[12]), .C(C_target[12]));
PDUSDGZ I_D_T13 (.PAD(target[13]), .C(C_target[13]));
PDUSDGZ I_D_T14 (.PAD(target[14]), .C(C_target[14]));
PDUSDGZ I_D_T15 (.PAD(target[15]), .C(C_target[15]));
PDUSDGZ I_D_T16 (.PAD(target[16]), .C(C_target[16]));
PDUSDGZ I_D_T17 (.PAD(target[17]), .C(C_target[17]));
PDUSDGZ I_D_T18 (.PAD(target[18]), .C(C_target[18]));
PDUSDGZ I_D_T19 (.PAD(target[19]), .C(C_target[19]));
PDUSDGZ I_D_T20 (.PAD(target[20]), .C(C_target[20]));
PDUSDGZ I_D_T21 (.PAD(target[21]), .C(C_target[21]));
PDUSDGZ I_D_T22 (.PAD(target[22]), .C(C_target[22]));
PDUSDGZ I_D_T23 (.PAD(target[23]), .C(C_target[23]));
PDUSDGZ I_D_T24 (.PAD(target[24]), .C(C_target[24]));
PDUSDGZ I_D_T25 (.PAD(target[25]), .C(C_target[25]));
PDUSDGZ I_D_T26 (.PAD(target[26]), .C(C_target[26]));
PDUSDGZ I_D_T27 (.PAD(target[27]), .C(C_target[27]));
PDUSDGZ I_D_T28 (.PAD(target[28]), .C(C_target[28]));
PDUSDGZ I_D_T29 (.PAD(target[29]), .C(C_target[29]));
PDUSDGZ I_D_T30 (.PAD(target[30]), .C(C_target[30]));
PDUSDGZ I_D_T31 (.PAD(target[31]), .C(C_target[31]));
PDUSDGZ I_D_W10  (.PAD(weight1[0]),  .C(C_weight1[0]));
PDUSDGZ I_D_W11  (.PAD(weight1[1]),  .C(C_weight1[1]));
PDUSDGZ I_D_W12  (.PAD(weight1[2]),  .C(C_weight1[2]));
PDUSDGZ I_D_W13  (.PAD(weight1[3]),  .C(C_weight1[3]));
PDUSDGZ I_D_W14  (.PAD(weight1[4]),  .C(C_weight1[4]));
PDUSDGZ I_D_W15  (.PAD(weight1[5]),  .C(C_weight1[5]));
PDUSDGZ I_D_W16  (.PAD(weight1[6]),  .C(C_weight1[6]));
PDUSDGZ I_D_W17  (.PAD(weight1[7]),  .C(C_weight1[7]));
PDUSDGZ I_D_W18  (.PAD(weight1[8]),  .C(C_weight1[8]));
PDUSDGZ I_D_W19  (.PAD(weight1[9]),  .C(C_weight1[9]));
PDUSDGZ I_D_W110 (.PAD(weight1[10]), .C(C_weight1[10]));
PDUSDGZ I_D_W111 (.PAD(weight1[11]), .C(C_weight1[11]));
PDUSDGZ I_D_W112 (.PAD(weight1[12]), .C(C_weight1[12]));
PDUSDGZ I_D_W113 (.PAD(weight1[13]), .C(C_weight1[13]));
PDUSDGZ I_D_W114 (.PAD(weight1[14]), .C(C_weight1[14]));
PDUSDGZ I_D_W115 (.PAD(weight1[15]), .C(C_weight1[15]));
PDUSDGZ I_D_W116 (.PAD(weight1[16]), .C(C_weight1[16]));
PDUSDGZ I_D_W117 (.PAD(weight1[17]), .C(C_weight1[17]));
PDUSDGZ I_D_W118 (.PAD(weight1[18]), .C(C_weight1[18]));
PDUSDGZ I_D_W119 (.PAD(weight1[19]), .C(C_weight1[19]));
PDUSDGZ I_D_W120 (.PAD(weight1[20]), .C(C_weight1[20]));
PDUSDGZ I_D_W121 (.PAD(weight1[21]), .C(C_weight1[21]));
PDUSDGZ I_D_W122 (.PAD(weight1[22]), .C(C_weight1[22]));
PDUSDGZ I_D_W123 (.PAD(weight1[23]), .C(C_weight1[23]));
PDUSDGZ I_D_W124 (.PAD(weight1[24]), .C(C_weight1[24]));
PDUSDGZ I_D_W125 (.PAD(weight1[25]), .C(C_weight1[25]));
PDUSDGZ I_D_W126 (.PAD(weight1[26]), .C(C_weight1[26]));
PDUSDGZ I_D_W127 (.PAD(weight1[27]), .C(C_weight1[27]));
PDUSDGZ I_D_W128 (.PAD(weight1[28]), .C(C_weight1[28]));
PDUSDGZ I_D_W129 (.PAD(weight1[29]), .C(C_weight1[29]));
PDUSDGZ I_D_W130 (.PAD(weight1[30]), .C(C_weight1[30]));
PDUSDGZ I_D_W131 (.PAD(weight1[31]), .C(C_weight1[31]));
PDUSDGZ I_D_W20  (.PAD(weight2[0]),  .C(C_weight2[0]));
PDUSDGZ I_D_W21  (.PAD(weight2[1]),  .C(C_weight2[1]));
PDUSDGZ I_D_W22  (.PAD(weight2[2]),  .C(C_weight2[2]));
PDUSDGZ I_D_W23  (.PAD(weight2[3]),  .C(C_weight2[3]));
PDUSDGZ I_D_W24  (.PAD(weight2[4]),  .C(C_weight2[4]));
PDUSDGZ I_D_W25  (.PAD(weight2[5]),  .C(C_weight2[5]));
PDUSDGZ I_D_W26  (.PAD(weight2[6]),  .C(C_weight2[6]));
PDUSDGZ I_D_W27  (.PAD(weight2[7]),  .C(C_weight2[7]));
PDUSDGZ I_D_W28  (.PAD(weight2[8]),  .C(C_weight2[8]));
PDUSDGZ I_D_W29  (.PAD(weight2[9]),  .C(C_weight2[9]));
PDUSDGZ I_D_W210 (.PAD(weight2[10]), .C(C_weight2[10]));
PDUSDGZ I_D_W211 (.PAD(weight2[11]), .C(C_weight2[11]));
PDUSDGZ I_D_W212 (.PAD(weight2[12]), .C(C_weight2[12]));
PDUSDGZ I_D_W213 (.PAD(weight2[13]), .C(C_weight2[13]));
PDUSDGZ I_D_W214 (.PAD(weight2[14]), .C(C_weight2[14]));
PDUSDGZ I_D_W215 (.PAD(weight2[15]), .C(C_weight2[15]));
PDUSDGZ I_D_W216 (.PAD(weight2[16]), .C(C_weight2[16]));
PDUSDGZ I_D_W217 (.PAD(weight2[17]), .C(C_weight2[17]));
PDUSDGZ I_D_W218 (.PAD(weight2[18]), .C(C_weight2[18]));
PDUSDGZ I_D_W219 (.PAD(weight2[19]), .C(C_weight2[19]));
PDUSDGZ I_D_W220 (.PAD(weight2[20]), .C(C_weight2[20]));
PDUSDGZ I_D_W221 (.PAD(weight2[21]), .C(C_weight2[21]));
PDUSDGZ I_D_W222 (.PAD(weight2[22]), .C(C_weight2[22]));
PDUSDGZ I_D_W223 (.PAD(weight2[23]), .C(C_weight2[23]));
PDUSDGZ I_D_W224 (.PAD(weight2[24]), .C(C_weight2[24]));
PDUSDGZ I_D_W225 (.PAD(weight2[25]), .C(C_weight2[25]));
PDUSDGZ I_D_W226 (.PAD(weight2[26]), .C(C_weight2[26]));
PDUSDGZ I_D_W227 (.PAD(weight2[27]), .C(C_weight2[27]));
PDUSDGZ I_D_W228 (.PAD(weight2[28]), .C(C_weight2[28]));
PDUSDGZ I_D_W229 (.PAD(weight2[29]), .C(C_weight2[29]));
PDUSDGZ I_D_W230 (.PAD(weight2[30]), .C(C_weight2[30]));
PDUSDGZ I_D_W231 (.PAD(weight2[31]), .C(C_weight2[31]));


// Output Pads
PDD08SDGZ O_OUT_VALID(.OEN(1'b0), .I(C_out_valid), .PAD(out_valid), .C());
PDD08SDGZ O_OUT0  (.OEN(1'b0), .I(C_out[0]),  .PAD(out[0]),  .C());
PDD08SDGZ O_OUT1  (.OEN(1'b0), .I(C_out[1]),  .PAD(out[1]),  .C());
PDD08SDGZ O_OUT2  (.OEN(1'b0), .I(C_out[2]),  .PAD(out[2]),  .C());
PDD08SDGZ O_OUT3  (.OEN(1'b0), .I(C_out[3]),  .PAD(out[3]),  .C());
PDD08SDGZ O_OUT4  (.OEN(1'b0), .I(C_out[4]),  .PAD(out[4]),  .C());
PDD08SDGZ O_OUT5  (.OEN(1'b0), .I(C_out[5]),  .PAD(out[5]),  .C());
PDD08SDGZ O_OUT6  (.OEN(1'b0), .I(C_out[6]),  .PAD(out[6]),  .C());
PDD08SDGZ O_OUT7  (.OEN(1'b0), .I(C_out[7]),  .PAD(out[7]),  .C());
PDD08SDGZ O_OUT8  (.OEN(1'b0), .I(C_out[8]),  .PAD(out[8]),  .C());
PDD08SDGZ O_OUT9  (.OEN(1'b0), .I(C_out[9]),  .PAD(out[9]),  .C());
PDD08SDGZ O_OUT10 (.OEN(1'b0), .I(C_out[10]), .PAD(out[10]), .C());
PDD08SDGZ O_OUT11 (.OEN(1'b0), .I(C_out[11]), .PAD(out[11]), .C());
PDD08SDGZ O_OUT12 (.OEN(1'b0), .I(C_out[12]), .PAD(out[12]), .C());
PDD08SDGZ O_OUT13 (.OEN(1'b0), .I(C_out[13]), .PAD(out[13]), .C());
PDD08SDGZ O_OUT14 (.OEN(1'b0), .I(C_out[14]), .PAD(out[14]), .C());
PDD08SDGZ O_OUT15 (.OEN(1'b0), .I(C_out[15]), .PAD(out[15]), .C());
PDD08SDGZ O_OUT16 (.OEN(1'b0), .I(C_out[16]), .PAD(out[16]), .C());
PDD08SDGZ O_OUT17 (.OEN(1'b0), .I(C_out[17]), .PAD(out[17]), .C());
PDD08SDGZ O_OUT18 (.OEN(1'b0), .I(C_out[18]), .PAD(out[18]), .C());
PDD08SDGZ O_OUT19 (.OEN(1'b0), .I(C_out[19]), .PAD(out[19]), .C());
PDD08SDGZ O_OUT20 (.OEN(1'b0), .I(C_out[20]), .PAD(out[20]), .C());
PDD08SDGZ O_OUT21 (.OEN(1'b0), .I(C_out[21]), .PAD(out[21]), .C());
PDD08SDGZ O_OUT22 (.OEN(1'b0), .I(C_out[22]), .PAD(out[22]), .C());
PDD08SDGZ O_OUT23 (.OEN(1'b0), .I(C_out[23]), .PAD(out[23]), .C());
PDD08SDGZ O_OUT24 (.OEN(1'b0), .I(C_out[24]), .PAD(out[24]), .C());
PDD08SDGZ O_OUT25 (.OEN(1'b0), .I(C_out[25]), .PAD(out[25]), .C());
PDD08SDGZ O_OUT26 (.OEN(1'b0), .I(C_out[26]), .PAD(out[26]), .C());
PDD08SDGZ O_OUT27 (.OEN(1'b0), .I(C_out[27]), .PAD(out[27]), .C());
PDD08SDGZ O_OUT28 (.OEN(1'b0), .I(C_out[28]), .PAD(out[28]), .C());
PDD08SDGZ O_OUT29 (.OEN(1'b0), .I(C_out[29]), .PAD(out[29]), .C());
PDD08SDGZ O_OUT30 (.OEN(1'b0), .I(C_out[30]), .PAD(out[30]), .C());
PDD08SDGZ O_OUT31 (.OEN(1'b0), .I(C_out[31]), .PAD(out[31]), .C());



// IO power 
PVDD2DGZ VDDP0 ();
PVSS2DGZ GNDP0 ();
PVDD2DGZ VDDP1 ();
PVSS2DGZ GNDP1 ();
PVDD2DGZ VDDP2 ();
PVSS2DGZ GNDP2 ();
PVDD2DGZ VDDP3 ();
PVSS2DGZ GNDP3 ();
PVDD2DGZ VDDP4 ();
PVSS2DGZ GNDP4 ();
PVDD2DGZ VDDP5 ();
PVSS2DGZ GNDP5 ();
PVDD2DGZ VDDP6 ();
PVSS2DGZ GNDP6 ();
PVDD2DGZ VDDP7 ();
PVSS2DGZ GNDP7 ();


// Core power
PVDD1DGZ VDDC0 ();
PVSS1DGZ GNDC0 ();
PVDD1DGZ VDDC1 ();
PVSS1DGZ GNDC1 ();
PVDD1DGZ VDDC2 ();
PVSS1DGZ GNDC2 ();
PVDD1DGZ VDDC3 ();
PVSS1DGZ GNDC3 ();
PVDD1DGZ VDDC4 ();
PVSS1DGZ GNDC4 ();
PVDD1DGZ VDDC5 ();
PVSS1DGZ GNDC5 ();
PVDD1DGZ VDDC6 ();
PVSS1DGZ GNDC6 ();
PVDD1DGZ VDDC7 ();
PVSS1DGZ GNDC7 ();

endmodule

