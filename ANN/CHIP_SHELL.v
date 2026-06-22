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
DCCKBD12BWP7T40P140 buf0(.I(C_clk),.Z(BUF_clk));

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
PDDW08SDGZ_H_G I_CLK(.I(1'b0), .OEN(1'b1), .REN(1'b0), .PAD(clk), .C(C_clk));
PDDW08SDGZ_H_G I_RESET(.I(1'b0), .OEN(1'b1), .REN(1'b0), .PAD(rst_n), .C(C_rst_n));
PDDW08DGZ_H_G I_IN_VALID_D(.I(1'b0), .OEN(1'b1), .REN(1'b0), .PAD(in_valid_d), .C(C_in_valid_d));
PDDW08DGZ_H_G I_IN_VALID_T(.I(1'b0), .OEN(1'b1), .REN(1'b0), .PAD(in_valid_t), .C(C_in_valid_t));
PDDW08DGZ_H_G I_IN_VALID_W1(.I(1'b0), .OEN(1'b1), .REN(1'b0), .PAD(in_valid_w1), .C(C_in_valid_w1));
PDDW08DGZ_H_G I_IN_VALID_W2(.I(1'b0), .OEN(1'b1), .REN(1'b0), .PAD(in_valid_w2), .C(C_in_valid_w2));
PDDW08DGZ_V_G I_D_P0(.I(1'b0), .OEN(1'b1), .REN(1'b0), .PAD(data_point[0]), .C(C_data_point[0]));
PDDW08DGZ_V_G I_D_P1(.I(1'b0), .OEN(1'b1), .REN(1'b0), .PAD(data_point[1]), .C(C_data_point[1]));
PDDW08DGZ_V_G I_D_P2(.I(1'b0), .OEN(1'b1), .REN(1'b0), .PAD(data_point[2]), .C(C_data_point[2]));
PDDW08DGZ_V_G I_D_P3(.I(1'b0), .OEN(1'b1), .REN(1'b0), .PAD(data_point[3]), .C(C_data_point[3]));
PDDW08DGZ_V_G I_D_P4(.I(1'b0), .OEN(1'b1), .REN(1'b0), .PAD(data_point[4]), .C(C_data_point[4]));
PDDW08DGZ_V_G I_D_P5(.I(1'b0), .OEN(1'b1), .REN(1'b0), .PAD(data_point[5]), .C(C_data_point[5]));
PDDW08DGZ_V_G I_D_P6(.I(1'b0), .OEN(1'b1), .REN(1'b0), .PAD(data_point[6]), .C(C_data_point[6]));
PDDW08DGZ_V_G I_D_P7(.I(1'b0), .OEN(1'b1), .REN(1'b0), .PAD(data_point[7]), .C(C_data_point[7]));
PDDW08DGZ_V_G I_D_P8(.I(1'b0), .OEN(1'b1), .REN(1'b0), .PAD(data_point[8]), .C(C_data_point[8]));
PDDW08DGZ_V_G I_D_P9(.I(1'b0), .OEN(1'b1), .REN(1'b0), .PAD(data_point[9]), .C(C_data_point[9]));
PDDW08DGZ_V_G I_D_P10(.I(1'b0), .OEN(1'b1), .REN(1'b0), .PAD(data_point[10]), .C(C_data_point[10]));
PDDW08DGZ_V_G I_D_P11(.I(1'b0), .OEN(1'b1), .REN(1'b0), .PAD(data_point[11]), .C(C_data_point[11]));
PDDW08DGZ_V_G I_D_P12(.I(1'b0), .OEN(1'b1), .REN(1'b0), .PAD(data_point[12]), .C(C_data_point[12]));
PDDW08DGZ_V_G I_D_P13(.I(1'b0), .OEN(1'b1), .REN(1'b0), .PAD(data_point[13]), .C(C_data_point[13]));
PDDW08DGZ_V_G I_D_P14(.I(1'b0), .OEN(1'b1), .REN(1'b0), .PAD(data_point[14]), .C(C_data_point[14]));
PDDW08DGZ_V_G I_D_P15(.I(1'b0), .OEN(1'b1), .REN(1'b0), .PAD(data_point[15]), .C(C_data_point[15]));
PDDW08DGZ_V_G I_D_P16(.I(1'b0), .OEN(1'b1), .REN(1'b0), .PAD(data_point[16]), .C(C_data_point[16]));
PDDW08DGZ_V_G I_D_P17(.I(1'b0), .OEN(1'b1), .REN(1'b0), .PAD(data_point[17]), .C(C_data_point[17]));
PDDW08DGZ_V_G I_D_P18(.I(1'b0), .OEN(1'b1), .REN(1'b0), .PAD(data_point[18]), .C(C_data_point[18]));
PDDW08DGZ_V_G I_D_P19(.I(1'b0), .OEN(1'b1), .REN(1'b0), .PAD(data_point[19]), .C(C_data_point[19]));
PDDW08DGZ_V_G I_D_P20(.I(1'b0), .OEN(1'b1), .REN(1'b0), .PAD(data_point[20]), .C(C_data_point[20]));
PDDW08DGZ_V_G I_D_P21(.I(1'b0), .OEN(1'b1), .REN(1'b0), .PAD(data_point[21]), .C(C_data_point[21]));
PDDW08DGZ_V_G I_D_P22(.I(1'b0), .OEN(1'b1), .REN(1'b0), .PAD(data_point[22]), .C(C_data_point[22]));
PDDW08DGZ_V_G I_D_P23(.I(1'b0), .OEN(1'b1), .REN(1'b0), .PAD(data_point[23]), .C(C_data_point[23]));
PDDW08DGZ_V_G I_D_P24(.I(1'b0), .OEN(1'b1), .REN(1'b0), .PAD(data_point[24]), .C(C_data_point[24]));
PDDW08DGZ_V_G I_D_P25(.I(1'b0), .OEN(1'b1), .REN(1'b0), .PAD(data_point[25]), .C(C_data_point[25]));
PDDW08DGZ_V_G I_D_P26(.I(1'b0), .OEN(1'b1), .REN(1'b0), .PAD(data_point[26]), .C(C_data_point[26]));
PDDW08DGZ_V_G I_D_P27(.I(1'b0), .OEN(1'b1), .REN(1'b0), .PAD(data_point[27]), .C(C_data_point[27]));
PDDW08DGZ_V_G I_D_P28(.I(1'b0), .OEN(1'b1), .REN(1'b0), .PAD(data_point[28]), .C(C_data_point[28]));
PDDW08DGZ_V_G I_D_P29(.I(1'b0), .OEN(1'b1), .REN(1'b0), .PAD(data_point[29]), .C(C_data_point[29]));
PDDW08DGZ_V_G I_D_P30(.I(1'b0), .OEN(1'b1), .REN(1'b0), .PAD(data_point[30]), .C(C_data_point[30]));
PDDW08DGZ_V_G I_D_P31(.I(1'b0), .OEN(1'b1), .REN(1'b0), .PAD(data_point[31]), .C(C_data_point[31]));
PDDW08DGZ_V_G I_D_T0(.I(1'b0), .OEN(1'b1), .REN(1'b0), .PAD(target[0]), .C(C_target[0]));
PDDW08DGZ_V_G I_D_T1(.I(1'b0), .OEN(1'b1), .REN(1'b0), .PAD(target[1]), .C(C_target[1]));
PDDW08DGZ_V_G I_D_T2(.I(1'b0), .OEN(1'b1), .REN(1'b0), .PAD(target[2]), .C(C_target[2]));
PDDW08DGZ_V_G I_D_T3(.I(1'b0), .OEN(1'b1), .REN(1'b0), .PAD(target[3]), .C(C_target[3]));
PDDW08DGZ_V_G I_D_T4(.I(1'b0), .OEN(1'b1), .REN(1'b0), .PAD(target[4]), .C(C_target[4]));
PDDW08DGZ_V_G I_D_T5(.I(1'b0), .OEN(1'b1), .REN(1'b0), .PAD(target[5]), .C(C_target[5]));
PDDW08DGZ_V_G I_D_T6(.I(1'b0), .OEN(1'b1), .REN(1'b0), .PAD(target[6]), .C(C_target[6]));
PDDW08DGZ_V_G I_D_T7(.I(1'b0), .OEN(1'b1), .REN(1'b0), .PAD(target[7]), .C(C_target[7]));
PDDW08DGZ_H_G I_D_T8 (.I(1'b0), .OEN(1'b1), .REN(1'b0), .PAD(target[8]), .C(C_target[8]));
PDDW08DGZ_H_G I_D_T9 (.I(1'b0), .OEN(1'b1), .REN(1'b0), .PAD(target[9]), .C(C_target[9]));
PDDW08DGZ_H_G I_D_T10(.I(1'b0), .OEN(1'b1), .REN(1'b0), .PAD(target[10]), .C(C_target[10]));
PDDW08DGZ_H_G I_D_T11(.I(1'b0), .OEN(1'b1), .REN(1'b0), .PAD(target[11]), .C(C_target[11]));
PDDW08DGZ_H_G I_D_T12(.I(1'b0), .OEN(1'b1), .REN(1'b0), .PAD(target[12]), .C(C_target[12]));
PDDW08DGZ_H_G I_D_T13(.I(1'b0), .OEN(1'b1), .REN(1'b0), .PAD(target[13]), .C(C_target[13]));
PDDW08DGZ_H_G I_D_T14(.I(1'b0), .OEN(1'b1), .REN(1'b0), .PAD(target[14]), .C(C_target[14]));
PDDW08DGZ_H_G I_D_T15(.I(1'b0), .OEN(1'b1), .REN(1'b0), .PAD(target[15]), .C(C_target[15]));
PDDW08DGZ_H_G I_D_T16(.I(1'b0), .OEN(1'b1), .REN(1'b0), .PAD(target[16]), .C(C_target[16]));
PDDW08DGZ_H_G I_D_T17(.I(1'b0), .OEN(1'b1), .REN(1'b0), .PAD(target[17]), .C(C_target[17]));
PDDW08DGZ_H_G I_D_T18(.I(1'b0), .OEN(1'b1), .REN(1'b0), .PAD(target[18]), .C(C_target[18]));
PDDW08DGZ_H_G I_D_T19(.I(1'b0), .OEN(1'b1), .REN(1'b0), .PAD(target[19]), .C(C_target[19]));
PDDW08DGZ_H_G I_D_T20(.I(1'b0), .OEN(1'b1), .REN(1'b0), .PAD(target[20]), .C(C_target[20]));
PDDW08DGZ_H_G I_D_T21(.I(1'b0), .OEN(1'b1), .REN(1'b0), .PAD(target[21]), .C(C_target[21]));
PDDW08DGZ_H_G I_D_T22(.I(1'b0), .OEN(1'b1), .REN(1'b0), .PAD(target[22]), .C(C_target[22]));
PDDW08DGZ_H_G I_D_T23(.I(1'b0), .OEN(1'b1), .REN(1'b0), .PAD(target[23]), .C(C_target[23]));
PDDW08DGZ_H_G I_D_T24(.I(1'b0), .OEN(1'b1), .REN(1'b0), .PAD(target[24]), .C(C_target[24]));
PDDW08DGZ_H_G I_D_T25(.I(1'b0), .OEN(1'b1), .REN(1'b0), .PAD(target[25]), .C(C_target[25]));
PDDW08DGZ_H_G I_D_T26(.I(1'b0), .OEN(1'b1), .REN(1'b0), .PAD(target[26]), .C(C_target[26]));
PDDW08DGZ_H_G I_D_T27(.I(1'b0), .OEN(1'b1), .REN(1'b0), .PAD(target[27]), .C(C_target[27]));
PDDW08DGZ_H_G I_D_T28(.I(1'b0), .OEN(1'b1), .REN(1'b0), .PAD(target[28]), .C(C_target[28]));
PDDW08DGZ_H_G I_D_T29(.I(1'b0), .OEN(1'b1), .REN(1'b0), .PAD(target[29]), .C(C_target[29]));
PDDW08DGZ_H_G I_D_T30(.I(1'b0), .OEN(1'b1), .REN(1'b0), .PAD(target[30]), .C(C_target[30]));
PDDW08DGZ_H_G I_D_T31(.I(1'b0), .OEN(1'b1), .REN(1'b0), .PAD(target[31]), .C(C_target[31]));
PDDW08DGZ_H_G I_D_W10 (.I(1'b0), .OEN(1'b1), .REN(1'b0), .PAD(weight1[0]),  .C(C_weight1[0]));
PDDW08DGZ_H_G I_D_W11 (.I(1'b0), .OEN(1'b1), .REN(1'b0), .PAD(weight1[1]),  .C(C_weight1[1]));
PDDW08DGZ_H_G I_D_W12 (.I(1'b0), .OEN(1'b1), .REN(1'b0), .PAD(weight1[2]),  .C(C_weight1[2]));
PDDW08DGZ_H_G I_D_W13 (.I(1'b0), .OEN(1'b1), .REN(1'b0), .PAD(weight1[3]),  .C(C_weight1[3]));
PDDW08DGZ_H_G I_D_W14 (.I(1'b0), .OEN(1'b1), .REN(1'b0), .PAD(weight1[4]),  .C(C_weight1[4]));
PDDW08DGZ_H_G I_D_W15 (.I(1'b0), .OEN(1'b1), .REN(1'b0), .PAD(weight1[5]),  .C(C_weight1[5]));
PDDW08DGZ_H_G I_D_W16 (.I(1'b0), .OEN(1'b1), .REN(1'b0), .PAD(weight1[6]),  .C(C_weight1[6]));
PDDW08DGZ_H_G I_D_W17 (.I(1'b0), .OEN(1'b1), .REN(1'b0), .PAD(weight1[7]),  .C(C_weight1[7]));
PDDW08DGZ_H_G I_D_W18 (.I(1'b0), .OEN(1'b1), .REN(1'b0), .PAD(weight1[8]),  .C(C_weight1[8]));
PDDW08DGZ_H_G I_D_W19 (.I(1'b0), .OEN(1'b1), .REN(1'b0), .PAD(weight1[9]),  .C(C_weight1[9]));
PDDW08DGZ_H_G I_D_W110(.I(1'b0), .OEN(1'b1), .REN(1'b0), .PAD(weight1[10]), .C(C_weight1[10]));
PDDW08DGZ_H_G I_D_W111(.I(1'b0), .OEN(1'b1), .REN(1'b0), .PAD(weight1[11]), .C(C_weight1[11]));
PDDW08DGZ_H_G I_D_W112(.I(1'b0), .OEN(1'b1), .REN(1'b0), .PAD(weight1[12]), .C(C_weight1[12]));
PDDW08DGZ_H_G I_D_W113(.I(1'b0), .OEN(1'b1), .REN(1'b0), .PAD(weight1[13]), .C(C_weight1[13]));
PDDW08DGZ_H_G I_D_W114(.I(1'b0), .OEN(1'b1), .REN(1'b0), .PAD(weight1[14]), .C(C_weight1[14]));
PDDW08DGZ_H_G I_D_W115(.I(1'b0), .OEN(1'b1), .REN(1'b0), .PAD(weight1[15]), .C(C_weight1[15]));
PDDW08DGZ_V_G I_D_W116(.I(1'b0), .OEN(1'b1), .REN(1'b0), .PAD(weight1[16]), .C(C_weight1[16]));
PDDW08DGZ_V_G I_D_W117(.I(1'b0), .OEN(1'b1), .REN(1'b0), .PAD(weight1[17]), .C(C_weight1[17]));
PDDW08DGZ_V_G I_D_W118(.I(1'b0), .OEN(1'b1), .REN(1'b0), .PAD(weight1[18]), .C(C_weight1[18]));
PDDW08DGZ_V_G I_D_W119(.I(1'b0), .OEN(1'b1), .REN(1'b0), .PAD(weight1[19]), .C(C_weight1[19]));
PDDW08DGZ_V_G I_D_W120(.I(1'b0), .OEN(1'b1), .REN(1'b0), .PAD(weight1[20]), .C(C_weight1[20]));
PDDW08DGZ_V_G I_D_W121(.I(1'b0), .OEN(1'b1), .REN(1'b0), .PAD(weight1[21]), .C(C_weight1[21]));
PDDW08DGZ_V_G I_D_W122(.I(1'b0), .OEN(1'b1), .REN(1'b0), .PAD(weight1[22]), .C(C_weight1[22]));
PDDW08DGZ_V_G I_D_W123(.I(1'b0), .OEN(1'b1), .REN(1'b0), .PAD(weight1[23]), .C(C_weight1[23]));
PDDW08DGZ_V_G I_D_W124(.I(1'b0), .OEN(1'b1), .REN(1'b0), .PAD(weight1[24]), .C(C_weight1[24]));
PDDW08DGZ_V_G I_D_W125(.I(1'b0), .OEN(1'b1), .REN(1'b0), .PAD(weight1[25]), .C(C_weight1[25]));
PDDW08DGZ_V_G I_D_W126(.I(1'b0), .OEN(1'b1), .REN(1'b0), .PAD(weight1[26]), .C(C_weight1[26]));
PDDW08DGZ_V_G I_D_W127(.I(1'b0), .OEN(1'b1), .REN(1'b0), .PAD(weight1[27]), .C(C_weight1[27]));
PDDW08DGZ_V_G I_D_W128(.I(1'b0), .OEN(1'b1), .REN(1'b0), .PAD(weight1[28]), .C(C_weight1[28]));
PDDW08DGZ_V_G I_D_W129(.I(1'b0), .OEN(1'b1), .REN(1'b0), .PAD(weight1[29]), .C(C_weight1[29]));
PDDW08DGZ_V_G I_D_W130(.I(1'b0), .OEN(1'b1), .REN(1'b0), .PAD(weight1[30]), .C(C_weight1[30]));
PDDW08DGZ_V_G I_D_W131(.I(1'b0), .OEN(1'b1), .REN(1'b0), .PAD(weight1[31]), .C(C_weight1[31]));
PDDW08DGZ_V_G I_D_W20 (.I(1'b0), .OEN(1'b1), .REN(1'b0), .PAD(weight2[0]),  .C(C_weight2[0]));
PDDW08DGZ_V_G I_D_W21 (.I(1'b0), .OEN(1'b1), .REN(1'b0), .PAD(weight2[1]),  .C(C_weight2[1]));
PDDW08DGZ_V_G I_D_W22 (.I(1'b0), .OEN(1'b1), .REN(1'b0), .PAD(weight2[2]),  .C(C_weight2[2]));
PDDW08DGZ_V_G I_D_W23 (.I(1'b0), .OEN(1'b1), .REN(1'b0), .PAD(weight2[3]),  .C(C_weight2[3]));
PDDW08DGZ_V_G I_D_W24 (.I(1'b0), .OEN(1'b1), .REN(1'b0), .PAD(weight2[4]),  .C(C_weight2[4]));
PDDW08DGZ_V_G I_D_W25 (.I(1'b0), .OEN(1'b1), .REN(1'b0), .PAD(weight2[5]),  .C(C_weight2[5]));
PDDW08DGZ_V_G I_D_W26 (.I(1'b0), .OEN(1'b1), .REN(1'b0), .PAD(weight2[6]),  .C(C_weight2[6]));
PDDW08DGZ_V_G I_D_W27 (.I(1'b0), .OEN(1'b1), .REN(1'b0), .PAD(weight2[7]),  .C(C_weight2[7]));
PDDW08DGZ_V_G I_D_W28 (.I(1'b0), .OEN(1'b1), .REN(1'b0), .PAD(weight2[8]),  .C(C_weight2[8]));
PDDW08DGZ_V_G I_D_W29 (.I(1'b0), .OEN(1'b1), .REN(1'b0), .PAD(weight2[9]),  .C(C_weight2[9]));
PDDW08DGZ_V_G I_D_W210(.I(1'b0), .OEN(1'b1), .REN(1'b0), .PAD(weight2[10]), .C(C_weight2[10]));
PDDW08DGZ_V_G I_D_W211(.I(1'b0), .OEN(1'b1), .REN(1'b0), .PAD(weight2[11]), .C(C_weight2[11]));
PDDW08DGZ_V_G I_D_W212(.I(1'b0), .OEN(1'b1), .REN(1'b0), .PAD(weight2[12]), .C(C_weight2[12]));
PDDW08DGZ_V_G I_D_W213(.I(1'b0), .OEN(1'b1), .REN(1'b0), .PAD(weight2[13]), .C(C_weight2[13]));
PDDW08DGZ_V_G I_D_W214(.I(1'b0), .OEN(1'b1), .REN(1'b0), .PAD(weight2[14]), .C(C_weight2[14]));
PDDW08DGZ_V_G I_D_W215(.I(1'b0), .OEN(1'b1), .REN(1'b0), .PAD(weight2[15]), .C(C_weight2[15]));
PDDW08DGZ_V_G I_D_W216(.I(1'b0), .OEN(1'b1), .REN(1'b0), .PAD(weight2[16]), .C(C_weight2[16]));
PDDW08DGZ_V_G I_D_W217(.I(1'b0), .OEN(1'b1), .REN(1'b0), .PAD(weight2[17]), .C(C_weight2[17]));
PDDW08DGZ_V_G I_D_W218(.I(1'b0), .OEN(1'b1), .REN(1'b0), .PAD(weight2[18]), .C(C_weight2[18]));
PDDW08DGZ_V_G I_D_W219(.I(1'b0), .OEN(1'b1), .REN(1'b0), .PAD(weight2[19]), .C(C_weight2[19]));
PDDW08DGZ_V_G I_D_W220(.I(1'b0), .OEN(1'b1), .REN(1'b0), .PAD(weight2[20]), .C(C_weight2[20]));
PDDW08DGZ_V_G I_D_W221(.I(1'b0), .OEN(1'b1), .REN(1'b0), .PAD(weight2[21]), .C(C_weight2[21]));
PDDW08DGZ_V_G I_D_W222(.I(1'b0), .OEN(1'b1), .REN(1'b0), .PAD(weight2[22]), .C(C_weight2[22]));
PDDW08DGZ_V_G I_D_W223(.I(1'b0), .OEN(1'b1), .REN(1'b0), .PAD(weight2[23]), .C(C_weight2[23]));
PDDW08DGZ_H_G I_D_W224(.I(1'b0), .OEN(1'b1), .REN(1'b0), .PAD(weight2[24]), .C(C_weight2[24]));
PDDW08DGZ_H_G I_D_W225(.I(1'b0), .OEN(1'b1), .REN(1'b0), .PAD(weight2[25]), .C(C_weight2[25]));
PDDW08DGZ_H_G I_D_W226(.I(1'b0), .OEN(1'b1), .REN(1'b0), .PAD(weight2[26]), .C(C_weight2[26]));
PDDW08DGZ_H_G I_D_W227(.I(1'b0), .OEN(1'b1), .REN(1'b0), .PAD(weight2[27]), .C(C_weight2[27]));
PDDW08DGZ_H_G I_D_W228(.I(1'b0), .OEN(1'b1), .REN(1'b0), .PAD(weight2[28]), .C(C_weight2[28]));
PDDW08DGZ_H_G I_D_W229(.I(1'b0), .OEN(1'b1), .REN(1'b0), .PAD(weight2[29]), .C(C_weight2[29]));
PDDW08DGZ_H_G I_D_W230(.I(1'b0), .OEN(1'b1), .REN(1'b0), .PAD(weight2[30]), .C(C_weight2[30]));
PDDW08DGZ_H_G I_D_W231(.I(1'b0), .OEN(1'b1), .REN(1'b0), .PAD(weight2[31]), .C(C_weight2[31]));



// Output Pads
PDDW08DGZ_V_G O_OUT_VALID (.I(C_out_valid),  .OEN(1'b0), .REN(1'b0), .PAD(out_valid),  .C());
PDDW08DGZ_H_G O_OUT0 (.I(C_out[0]),  .OEN(1'b0), .REN(1'b0), .PAD(out[0]),  .C());
PDDW08DGZ_H_G O_OUT1 (.I(C_out[1]),  .OEN(1'b0), .REN(1'b0), .PAD(out[1]),  .C());
PDDW08DGZ_H_G O_OUT2 (.I(C_out[2]),  .OEN(1'b0), .REN(1'b0), .PAD(out[2]),  .C());
PDDW08DGZ_H_G O_OUT3 (.I(C_out[3]),  .OEN(1'b0), .REN(1'b0), .PAD(out[3]),  .C());
PDDW08DGZ_H_G O_OUT4 (.I(C_out[4]),  .OEN(1'b0), .REN(1'b0), .PAD(out[4]),  .C());
PDDW08DGZ_H_G O_OUT5 (.I(C_out[5]),  .OEN(1'b0), .REN(1'b0), .PAD(out[5]),  .C());
PDDW08DGZ_H_G O_OUT6 (.I(C_out[6]),  .OEN(1'b0), .REN(1'b0), .PAD(out[6]),  .C());
PDDW08DGZ_H_G O_OUT7 (.I(C_out[7]),  .OEN(1'b0), .REN(1'b0), .PAD(out[7]),  .C());
PDDW08DGZ_H_G O_OUT8 (.I(C_out[8]),  .OEN(1'b0), .REN(1'b0), .PAD(out[8]),  .C());
PDDW08DGZ_H_G O_OUT9 (.I(C_out[9]),  .OEN(1'b0), .REN(1'b0), .PAD(out[9]),  .C());
PDDW08DGZ_H_G O_OUT10(.I(C_out[10]), .OEN(1'b0), .REN(1'b0), .PAD(out[10]), .C());
PDDW08DGZ_H_G O_OUT11(.I(C_out[11]), .OEN(1'b0), .REN(1'b0), .PAD(out[11]), .C());
PDDW08DGZ_H_G O_OUT12(.I(C_out[12]), .OEN(1'b0), .REN(1'b0), .PAD(out[12]), .C());
PDDW08DGZ_H_G O_OUT13(.I(C_out[13]), .OEN(1'b0), .REN(1'b0), .PAD(out[13]), .C());
PDDW08DGZ_H_G O_OUT14(.I(C_out[14]), .OEN(1'b0), .REN(1'b0), .PAD(out[14]), .C());
PDDW08DGZ_H_G O_OUT15(.I(C_out[15]), .OEN(1'b0), .REN(1'b0), .PAD(out[15]), .C());
PDDW08DGZ_H_G O_OUT16(.I(C_out[16]), .OEN(1'b0), .REN(1'b0), .PAD(out[16]), .C());
PDDW08DGZ_H_G O_OUT17(.I(C_out[17]), .OEN(1'b0), .REN(1'b0), .PAD(out[17]), .C());
PDDW08DGZ_H_G O_OUT18(.I(C_out[18]), .OEN(1'b0), .REN(1'b0), .PAD(out[18]), .C());
PDDW08DGZ_H_G O_OUT19(.I(C_out[19]), .OEN(1'b0), .REN(1'b0), .PAD(out[19]), .C());
PDDW08DGZ_H_G O_OUT20(.I(C_out[20]), .OEN(1'b0), .REN(1'b0), .PAD(out[20]), .C());
PDDW08DGZ_H_G O_OUT21(.I(C_out[21]), .OEN(1'b0), .REN(1'b0), .PAD(out[21]), .C());
PDDW08DGZ_H_G O_OUT22(.I(C_out[22]), .OEN(1'b0), .REN(1'b0), .PAD(out[22]), .C());
PDDW08DGZ_H_G O_OUT23(.I(C_out[23]), .OEN(1'b0), .REN(1'b0), .PAD(out[23]), .C());
PDDW08DGZ_H_G O_OUT24(.I(C_out[24]), .OEN(1'b0), .REN(1'b0), .PAD(out[24]), .C());
PDDW08DGZ_H_G O_OUT25(.I(C_out[25]), .OEN(1'b0), .REN(1'b0), .PAD(out[25]), .C());
PDDW08DGZ_H_G O_OUT26(.I(C_out[26]), .OEN(1'b0), .REN(1'b0), .PAD(out[26]), .C());
PDDW08DGZ_H_G O_OUT27(.I(C_out[27]), .OEN(1'b0), .REN(1'b0), .PAD(out[27]), .C());
PDDW08DGZ_H_G O_OUT28(.I(C_out[28]), .OEN(1'b0), .REN(1'b0), .PAD(out[28]), .C());
PDDW08DGZ_H_G O_OUT29(.I(C_out[29]), .OEN(1'b0), .REN(1'b0), .PAD(out[29]), .C());
PDDW08DGZ_H_G O_OUT30(.I(C_out[30]), .OEN(1'b0), .REN(1'b0), .PAD(out[30]), .C());
PDDW08DGZ_H_G O_OUT31(.I(C_out[31]), .OEN(1'b0), .REN(1'b0), .PAD(out[31]), .C());


// IO power 
PVDD2DGZ_H_G VDDP0 (.VDDPST(VDDIO));
PVSS2DGZ_H_G GNDP0 (.VSSPST(VSSIO));
PVDD2DGZ_H_G VDDP1 (.VDDPST(VDDIO));
PVSS2DGZ_H_G GNDP1 (.VSSPST(VSSIO));
PVDD2DGZ_H_G VDDP2 (.VDDPST(VDDIO));
PVSS2DGZ_H_G GNDP2 (.VSSPST(VSSIO));
PVDD2DGZ_H_G VDDP3 (.VDDPST(VDDIO));
PVSS2DGZ_H_G GNDP3 (.VSSPST(VSSIO));
PVDD2DGZ_V_G VDDP4 (.VDDPST(VDDIO));
PVSS2DGZ_V_G GNDP4 (.VSSPST(VSSIO));
PVDD2DGZ_V_G VDDP5 (.VDDPST(VDDIO));
PVSS2DGZ_V_G GNDP5 (.VSSPST(VSSIO));
PVDD2DGZ_V_G VDDP6 (.VDDPST(VDDIO));
PVSS2DGZ_V_G GNDP6 (.VSSPST(VSSIO));
PVDD2DGZ_V_G VDDP7 (.VDDPST(VDDIO));
PVSS2DGZ_V_G GNDP7 (.VSSPST(VSSIO));



// Core power
PVDD1DGZ_H_G VDDC0 (.VDD(VDDC));
PVSS1DGZ_H_G GNDC0 (.VSS(VSSC));
PVDD1DGZ_H_G VDDC1 (.VDD(VDDC));
PVSS1DGZ_H_G GNDC1 (.VSS(VSSC));
PVDD1DGZ_H_G VDDC2 (.VDD(VDDC));
PVSS1DGZ_H_G GNDC2 (.VSS(VSSC));
PVDD1DGZ_H_G VDDC3 (.VDD(VDDC));
PVSS1DGZ_H_G GNDC3 (.VSS(VSSC));
PVDD1DGZ_V_G VDDC4 (.VDD(VDDC));
PVSS1DGZ_V_G GNDC4 (.VSS(VSSC));
PVDD1DGZ_V_G VDDC5 (.VDD(VDDC));
PVSS1DGZ_V_G GNDC5 (.VSS(VSSC));
PVDD1DGZ_V_G VDDC6 (.VDD(VDDC));
PVSS1DGZ_V_G GNDC6 (.VSS(VSSC));
PVDD1DGZ_V_G VDDC7 (.VDD(VDDC));
PVSS1DGZ_V_G GNDC7 (.VSS(VSSC));


endmodule
