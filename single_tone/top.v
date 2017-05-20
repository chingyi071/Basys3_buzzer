module top(
  input clk,
  input rst,
  input press,
  output sound
);

wire clk_400;
wire valid;
wire [21:0] tone;

assign tone = press ?22'd125000 :22'd75000;

// Frequency Divider
tone_generator clk_wiz_0_inst(
  .clk(clk),
  .counter(tone),
  .sound(sound)
);

endmodule
