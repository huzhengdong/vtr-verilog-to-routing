module asr_8_2(
    a,
    c,
    clk,
    rst
);

input [7:0] a;
input clk, rst;
output [7:0] c;

always @ ( posedge clk )
begin
    case(rst)
        0: c = a >>> 2;
        1: c = 0;
    endcase
end

endmodule
