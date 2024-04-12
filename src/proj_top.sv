`timescale 1ns / 1ps

module proj_top(
   input sysclk,
   input rst,
   output [2:0] rgb,
   output [3:0] led,
   input [3:0] btn,
   input [3:0] sw
   );
  
  logic clk;
  clk_wiz_0 clk50Mhz_inst0
  (
   // Clock out ports
   .clk(clk),     // output clk
  // Clock in ports
   .sysclk(sysclk));      // input sysclk
   ila_0 sw_ila_inst0 (
     .clk(clk), // input wire clk
     .probe0(sw) // input wire [3:0]
  );
vio_0 vio_inst0 (
 .clk(clk),                // input wire clk
 .probe_in0(sw[0]),    // input wire [0 : 0] probe_in0
 .probe_in1(sw[1]),    // input wire [0 : 0] probe_in1
 .probe_in2(sw[2]),    // input wire [0 : 0] probe_in2
 .probe_in3(sw[3]),    // input wire [0 : 0] probe_in3
 .probe_in4(btn[0]),    // input wire [0 : 0] probe_in4
 .probe_in5(btn[1]),    // input wire [0 : 0] probe_in5
 .probe_in6(btn[2]),    // input wire [0 : 0] probe_in6
 .probe_in7(btn[3]),    // input wire [0 : 0] probe_in7
 .probe_out0(rgb[0]),  // output wire [0 : 0] probe_out0
 .probe_out1(rgb[1]),  // output wire [0 : 0] probe_out1
 .probe_out2(rgb[2])  // output wire [0 : 0] probe_out2
);

assign led = btn;
endmodule
