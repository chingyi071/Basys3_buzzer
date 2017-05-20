module tone_generator( clk, counter, sound );

input clk;
input [21:0] counter;
output reg sound;
wire sound_next;
wire sound_invert;

reg [21:0] num;
wire [21:0] next_num;

always@(posedge clk) begin
    if(num == counter)
    begin
        sound <= sound_invert;
        num <= 22'd0;
    end
    else
    begin
        sound <= sound_next;
        num <= next_num;
    end
end

assign next_num = num + 22'b1;
assign sound_next = sound;
assign sound_invert = ~sound;
endmodule
