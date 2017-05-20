`define BIT_LENGTH 30
module clock_divider(clk, counter);
input clk;
output [3:0] counter;

reg [`BIT_LENGTH-1:0] num;
wire [`BIT_LENGTH-1:0] next_num;

always@(posedge clk) begin
    begin
        num <= next_num;
    end
end

assign counter = num[`BIT_LENGTH-1:`BIT_LENGTH-4];
assign next_num = num + `BIT_LENGTH'b1;
endmodule
