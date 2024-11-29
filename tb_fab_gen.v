`timescale 1ns / 1ps

module fibonacci_generator_tb;

    reg clk;
    reg rst;
    reg enable;

    wire [31:0] num1;
    wire [31:0] num2;
    wire [31:0] fib_out;
    wire [5:0] count;
    wire done;

    fibonacci_generator uut (
        .clk(clk),
        .rst(rst),
        .enable(enable),
        .num1(num1),
        .num2(num2),
        .fib_out(fib_out),
        .count(count),
        .done(done)
    );
    always #5 clk = ~clk;

    initial begin
        clk = 0;
        rst = 1;
        enable = 0;
        #10;
        
        rst = 0;
        enable = 1;
        #200;
        enable = 0;
        #50;
        $stop;
    end
      
endmodule
