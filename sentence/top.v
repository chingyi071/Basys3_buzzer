module top(
  input clk,
  input rst,
  input press,
  output sound,
  output[3:0] led
);

reg [21:0] tone;
wire [3:0] time_stamp;
assign led = time_stamp;

// Mux, select tone from time_stamp
always@*
begin
case(time_stamp)
4'd0: tone = 22'd125000;
4'd1: tone = 22'd75000;
4'd2: tone = 22'd50000;
4'd3: tone = 22'd30000;
4'd4: tone = 22'd125000;
4'd5: tone = 22'd75000;
4'd6: tone = 22'd50000;
4'd7: tone = 22'd30000;
default: tone = 22'd125000;
endcase
end

// Frequency Divider
tone_generator clk_wiz_0_inst(
  .clk(clk),
  .counter(tone),
  .sound(sound)
);

// Frequency Divider
clock_divider clk_wiz_0_inst_time(
  .clk(clk),
  .counter(time_stamp)
);
endmodule
