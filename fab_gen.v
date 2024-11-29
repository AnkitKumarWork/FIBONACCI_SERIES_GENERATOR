module fibonacci_generator (
    input clk,
    input rst,
    input enable,
    output reg [31:0] num1,
    output reg [31:0] num2,
    output [31:0] fib_out,
    output reg [5:0] count, 
    output reg done
);
    assign fib_out = num1 + num2;

    always @(posedge clk or posedge rst) begin
        if (rst) begin
            num1 <= 32'd0;
            num2 <= 32'd1;
            count <= 6'd0;
            done <= 1'b0;
        end else if (enable && !done) begin
            num1 <= num2;
            num2 <= fib_out;
            count <= count + 1;
            if (count == 6'd19) begin
                done <= 1'b1;
            end
        end
    end
endmodule
