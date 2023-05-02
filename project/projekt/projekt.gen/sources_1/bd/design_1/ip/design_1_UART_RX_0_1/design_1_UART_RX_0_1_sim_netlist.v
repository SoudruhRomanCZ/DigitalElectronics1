// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Tue Apr 11 14:06:45 2023
// Host        : PC-627 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/240656/Documents/digital-electronics-1/project/projekt/projekt.gen/sources_1/bd/design_1/ip/design_1_UART_RX_0_1/design_1_UART_RX_0_1_sim_netlist.v
// Design      : design_1_UART_RX_0_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a50ticsg324-1L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_UART_RX_0_1,UART_RX,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "UART_RX,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module design_1_UART_RX_0_1
   (i_Clk,
    i_RX_Serial,
    o_RX_DV,
    o_RX_Byte);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 i_Clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME i_Clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN design_1_sim_clk_gen_0_0_clk, INSERT_VIP 0" *) input i_Clk;
  input i_RX_Serial;
  output o_RX_DV;
  output [7:0]o_RX_Byte;

  wire \<const0> ;
  wire i_Clk;
  wire i_RX_Serial;
  wire [7:0]o_RX_Byte;

  assign o_RX_DV = \<const0> ;
  GND GND
       (.G(\<const0> ));
  design_1_UART_RX_0_1_UART_RX U0
       (.i_Clk(i_Clk),
        .i_RX_Serial(i_RX_Serial),
        .o_RX_Byte(o_RX_Byte));
endmodule

(* ORIG_REF_NAME = "UART_RX" *) 
module design_1_UART_RX_0_1_UART_RX
   (o_RX_Byte,
    i_Clk,
    i_RX_Serial);
  output [7:0]o_RX_Byte;
  input i_Clk;
  input i_RX_Serial;

  wire i_Clk;
  wire i_RX_Serial;
  wire [7:0]o_RX_Byte;
  wire [6:0]p_0_in;
  wire [2:0]r_Bit_Index;
  wire \r_Bit_Index[0]_i_1_n_0 ;
  wire \r_Bit_Index[1]_i_1_n_0 ;
  wire \r_Bit_Index[2]_i_1_n_0 ;
  wire \r_Clk_Count[6]_i_1_n_0 ;
  wire \r_Clk_Count[6]_i_3_n_0 ;
  wire [6:1]r_Clk_Count_reg;
  wire \r_Clk_Count_reg_n_0_[0] ;
  wire \r_RX_Byte[0]_i_1_n_0 ;
  wire \r_RX_Byte[1]_i_1_n_0 ;
  wire \r_RX_Byte[2]_i_1_n_0 ;
  wire \r_RX_Byte[3]_i_1_n_0 ;
  wire \r_RX_Byte[4]_i_1_n_0 ;
  wire \r_RX_Byte[5]_i_1_n_0 ;
  wire \r_RX_Byte[6]_i_1_n_0 ;
  wire \r_RX_Byte[7]_i_1_n_0 ;
  wire \r_RX_Byte[7]_i_2_n_0 ;
  wire r_RX_Data;
  wire r_RX_Data_R;

  LUT2 #(
    .INIT(4'h1)) 
    \r_Bit_Index[0]_i_1 
       (.I0(r_Bit_Index[0]),
        .I1(\r_RX_Byte[7]_i_2_n_0 ),
        .O(\r_Bit_Index[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h06)) 
    \r_Bit_Index[1]_i_1 
       (.I0(r_Bit_Index[1]),
        .I1(r_Bit_Index[0]),
        .I2(\r_RX_Byte[7]_i_2_n_0 ),
        .O(\r_Bit_Index[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h006A)) 
    \r_Bit_Index[2]_i_1 
       (.I0(r_Bit_Index[2]),
        .I1(r_Bit_Index[1]),
        .I2(r_Bit_Index[0]),
        .I3(\r_RX_Byte[7]_i_2_n_0 ),
        .O(\r_Bit_Index[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_Bit_Index_reg[0] 
       (.C(i_Clk),
        .CE(1'b1),
        .D(\r_Bit_Index[0]_i_1_n_0 ),
        .Q(r_Bit_Index[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_Bit_Index_reg[1] 
       (.C(i_Clk),
        .CE(1'b1),
        .D(\r_Bit_Index[1]_i_1_n_0 ),
        .Q(r_Bit_Index[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_Bit_Index_reg[2] 
       (.C(i_Clk),
        .CE(1'b1),
        .D(\r_Bit_Index[2]_i_1_n_0 ),
        .Q(r_Bit_Index[2]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \r_Clk_Count[0]_i_1 
       (.I0(\r_Clk_Count_reg_n_0_[0] ),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \r_Clk_Count[1]_i_1 
       (.I0(\r_Clk_Count_reg_n_0_[0] ),
        .I1(r_Clk_Count_reg[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \r_Clk_Count[2]_i_1 
       (.I0(\r_Clk_Count_reg_n_0_[0] ),
        .I1(r_Clk_Count_reg[1]),
        .I2(r_Clk_Count_reg[2]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \r_Clk_Count[3]_i_1 
       (.I0(r_Clk_Count_reg[1]),
        .I1(\r_Clk_Count_reg_n_0_[0] ),
        .I2(r_Clk_Count_reg[2]),
        .I3(r_Clk_Count_reg[3]),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \r_Clk_Count[4]_i_1 
       (.I0(r_Clk_Count_reg[2]),
        .I1(\r_Clk_Count_reg_n_0_[0] ),
        .I2(r_Clk_Count_reg[1]),
        .I3(r_Clk_Count_reg[3]),
        .I4(r_Clk_Count_reg[4]),
        .O(p_0_in[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \r_Clk_Count[5]_i_1 
       (.I0(r_Clk_Count_reg[3]),
        .I1(r_Clk_Count_reg[1]),
        .I2(\r_Clk_Count_reg_n_0_[0] ),
        .I3(r_Clk_Count_reg[2]),
        .I4(r_Clk_Count_reg[4]),
        .I5(r_Clk_Count_reg[5]),
        .O(p_0_in[5]));
  LUT6 #(
    .INIT(64'h8080808080808000)) 
    \r_Clk_Count[6]_i_1 
       (.I0(r_Clk_Count_reg[4]),
        .I1(r_Clk_Count_reg[6]),
        .I2(r_Clk_Count_reg[5]),
        .I3(r_Clk_Count_reg[3]),
        .I4(r_Clk_Count_reg[2]),
        .I5(r_Clk_Count_reg[1]),
        .O(\r_Clk_Count[6]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \r_Clk_Count[6]_i_2 
       (.I0(\r_Clk_Count[6]_i_3_n_0 ),
        .I1(r_Clk_Count_reg[5]),
        .I2(r_Clk_Count_reg[6]),
        .O(p_0_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \r_Clk_Count[6]_i_3 
       (.I0(r_Clk_Count_reg[4]),
        .I1(r_Clk_Count_reg[2]),
        .I2(\r_Clk_Count_reg_n_0_[0] ),
        .I3(r_Clk_Count_reg[1]),
        .I4(r_Clk_Count_reg[3]),
        .O(\r_Clk_Count[6]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_Clk_Count_reg[0] 
       (.C(i_Clk),
        .CE(1'b1),
        .D(p_0_in[0]),
        .Q(\r_Clk_Count_reg_n_0_[0] ),
        .R(\r_Clk_Count[6]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_Clk_Count_reg[1] 
       (.C(i_Clk),
        .CE(1'b1),
        .D(p_0_in[1]),
        .Q(r_Clk_Count_reg[1]),
        .R(\r_Clk_Count[6]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_Clk_Count_reg[2] 
       (.C(i_Clk),
        .CE(1'b1),
        .D(p_0_in[2]),
        .Q(r_Clk_Count_reg[2]),
        .R(\r_Clk_Count[6]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_Clk_Count_reg[3] 
       (.C(i_Clk),
        .CE(1'b1),
        .D(p_0_in[3]),
        .Q(r_Clk_Count_reg[3]),
        .R(\r_Clk_Count[6]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_Clk_Count_reg[4] 
       (.C(i_Clk),
        .CE(1'b1),
        .D(p_0_in[4]),
        .Q(r_Clk_Count_reg[4]),
        .R(\r_Clk_Count[6]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_Clk_Count_reg[5] 
       (.C(i_Clk),
        .CE(1'b1),
        .D(p_0_in[5]),
        .Q(r_Clk_Count_reg[5]),
        .R(\r_Clk_Count[6]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_Clk_Count_reg[6] 
       (.C(i_Clk),
        .CE(1'b1),
        .D(p_0_in[6]),
        .Q(r_Clk_Count_reg[6]),
        .R(\r_Clk_Count[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000002)) 
    \r_RX_Byte[0]_i_1 
       (.I0(r_RX_Data),
        .I1(r_Bit_Index[1]),
        .I2(r_Bit_Index[0]),
        .I3(r_Bit_Index[2]),
        .I4(\r_RX_Byte[7]_i_2_n_0 ),
        .I5(o_RX_Byte[0]),
        .O(\r_RX_Byte[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFEF00000020)) 
    \r_RX_Byte[1]_i_1 
       (.I0(r_RX_Data),
        .I1(r_Bit_Index[1]),
        .I2(r_Bit_Index[0]),
        .I3(r_Bit_Index[2]),
        .I4(\r_RX_Byte[7]_i_2_n_0 ),
        .I5(o_RX_Byte[1]),
        .O(\r_RX_Byte[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFEF00000020)) 
    \r_RX_Byte[2]_i_1 
       (.I0(r_RX_Data),
        .I1(r_Bit_Index[0]),
        .I2(r_Bit_Index[1]),
        .I3(r_Bit_Index[2]),
        .I4(\r_RX_Byte[7]_i_2_n_0 ),
        .I5(o_RX_Byte[2]),
        .O(\r_RX_Byte[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFBF00000080)) 
    \r_RX_Byte[3]_i_1 
       (.I0(r_RX_Data),
        .I1(r_Bit_Index[1]),
        .I2(r_Bit_Index[0]),
        .I3(r_Bit_Index[2]),
        .I4(\r_RX_Byte[7]_i_2_n_0 ),
        .I5(o_RX_Byte[3]),
        .O(\r_RX_Byte[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEFF00000200)) 
    \r_RX_Byte[4]_i_1 
       (.I0(r_RX_Data),
        .I1(r_Bit_Index[1]),
        .I2(r_Bit_Index[0]),
        .I3(r_Bit_Index[2]),
        .I4(\r_RX_Byte[7]_i_2_n_0 ),
        .I5(o_RX_Byte[4]),
        .O(\r_RX_Byte[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFEFFF00002000)) 
    \r_RX_Byte[5]_i_1 
       (.I0(r_RX_Data),
        .I1(r_Bit_Index[1]),
        .I2(r_Bit_Index[0]),
        .I3(r_Bit_Index[2]),
        .I4(\r_RX_Byte[7]_i_2_n_0 ),
        .I5(o_RX_Byte[5]),
        .O(\r_RX_Byte[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFEFFF00002000)) 
    \r_RX_Byte[6]_i_1 
       (.I0(r_RX_Data),
        .I1(r_Bit_Index[0]),
        .I2(r_Bit_Index[1]),
        .I3(r_Bit_Index[2]),
        .I4(\r_RX_Byte[7]_i_2_n_0 ),
        .I5(o_RX_Byte[6]),
        .O(\r_RX_Byte[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFBFFF00008000)) 
    \r_RX_Byte[7]_i_1 
       (.I0(r_RX_Data),
        .I1(r_Bit_Index[1]),
        .I2(r_Bit_Index[0]),
        .I3(r_Bit_Index[2]),
        .I4(\r_RX_Byte[7]_i_2_n_0 ),
        .I5(o_RX_Byte[7]),
        .O(\r_RX_Byte[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h01FFFFFFFFFFFFFF)) 
    \r_RX_Byte[7]_i_2 
       (.I0(r_Clk_Count_reg[1]),
        .I1(r_Clk_Count_reg[2]),
        .I2(r_Clk_Count_reg[3]),
        .I3(r_Clk_Count_reg[5]),
        .I4(r_Clk_Count_reg[6]),
        .I5(r_Clk_Count_reg[4]),
        .O(\r_RX_Byte[7]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_RX_Byte_reg[0] 
       (.C(i_Clk),
        .CE(1'b1),
        .D(\r_RX_Byte[0]_i_1_n_0 ),
        .Q(o_RX_Byte[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_RX_Byte_reg[1] 
       (.C(i_Clk),
        .CE(1'b1),
        .D(\r_RX_Byte[1]_i_1_n_0 ),
        .Q(o_RX_Byte[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_RX_Byte_reg[2] 
       (.C(i_Clk),
        .CE(1'b1),
        .D(\r_RX_Byte[2]_i_1_n_0 ),
        .Q(o_RX_Byte[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_RX_Byte_reg[3] 
       (.C(i_Clk),
        .CE(1'b1),
        .D(\r_RX_Byte[3]_i_1_n_0 ),
        .Q(o_RX_Byte[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_RX_Byte_reg[4] 
       (.C(i_Clk),
        .CE(1'b1),
        .D(\r_RX_Byte[4]_i_1_n_0 ),
        .Q(o_RX_Byte[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_RX_Byte_reg[5] 
       (.C(i_Clk),
        .CE(1'b1),
        .D(\r_RX_Byte[5]_i_1_n_0 ),
        .Q(o_RX_Byte[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_RX_Byte_reg[6] 
       (.C(i_Clk),
        .CE(1'b1),
        .D(\r_RX_Byte[6]_i_1_n_0 ),
        .Q(o_RX_Byte[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_RX_Byte_reg[7] 
       (.C(i_Clk),
        .CE(1'b1),
        .D(\r_RX_Byte[7]_i_1_n_0 ),
        .Q(o_RX_Byte[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    r_RX_Data_R_reg
       (.C(i_Clk),
        .CE(1'b1),
        .D(i_RX_Serial),
        .Q(r_RX_Data_R),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    r_RX_Data_reg
       (.C(i_Clk),
        .CE(1'b1),
        .D(r_RX_Data_R),
        .Q(r_RX_Data),
        .R(1'b0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
