`timescale 1ns/1ps

module johnson_counter_tb;

    reg clk;
    reg reset;
    wire [3:0] q;

    johnson_counter uut (
        .clk(clk),
        .reset(reset),
        .q(q)
    );

    // Clock generation
    always #5 clk = ~clk;

    initial begin
        clk = 0;
        reset = 1;

        $monitor("Time = %0t | Reset = %b | Q = %b",
                  $time, reset, q);

        // Apply reset
        #10;
        reset = 0;

        // Run counter
        #80;

        $finish;
    end

endmodule