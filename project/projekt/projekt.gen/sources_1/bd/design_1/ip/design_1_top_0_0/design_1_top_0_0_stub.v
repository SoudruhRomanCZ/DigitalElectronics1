// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Tue Apr 11 14:06:45 2023
// Host        : PC-627 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/240656/Documents/digital-electronics-1/project/projekt/projekt.gen/sources_1/bd/design_1/ip/design_1_top_0_0/design_1_top_0_0_stub.v
// Design      : design_1_top_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a50ticsg324-1L
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "top,Vivado 2020.2" *)
module design_1_top_0_0(i_tx_data, i_tx_data_valid, o_tx_serial, 
  o_tx_ready, i_rx_serial, o_rx_data, o_rx_data_valid, clk, rst)
/* synthesis syn_black_box black_box_pad_pin="i_tx_data[7:0],i_tx_data_valid,o_tx_serial,o_tx_ready,i_rx_serial,o_rx_data[7:0],o_rx_data_valid,clk,rst" */;
  input [7:0]i_tx_data;
  input i_tx_data_valid;
  output o_tx_serial;
  output o_tx_ready;
  input i_rx_serial;
  output [7:0]o_rx_data;
  output o_rx_data_valid;
  input clk;
  input rst;
endmodule
