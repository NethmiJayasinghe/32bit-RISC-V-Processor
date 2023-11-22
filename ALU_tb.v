`timescale 1ns / 1ps

module ALU_tb;

    // Inputs
    reg [31:0] A, B, Accumulator;
    reg [3:0] ALUControl;

    // Outputs
    wire Carry, OverFlow, Zero, Negative;
    wire [31:0] Result;

    // Instantiate the ALU module
    ALU uut (
        .A(A), 
        .B(B), 
        .Accumulator(Accumulator), 
        .ALUControl(ALUControl), 
        .Carry(Carry), 
        .OverFlow(OverFlow), 
        .Zero(Zero), 
        .Negative(Negative), 
        .Result(Result)
    );

    initial begin
        // Initialize Inputs
        A = 0;
        B = 0;
        Accumulator = 0;
        ALUControl = 0;

        // Test Addition
        A = 32'd15; 
        B = 32'd10;
        ALUControl = 3'b000;
        #10; // Wait for 10 ns

        // Test Subtraction
        A = 32'd20;
        B = 32'd15;
        ALUControl = 3'b001;
        #10;

        // Test AND
        A = 32'b10101010101010101010101010101010;
        B = 32'b01010101010101010101010101010101;
        ALUControl = 3'b010;
        #10;

        // Test OR
        A = 32'b10101010101010101010101010101010;
        B = 32'b01010101010101010101010101010101;
        ALUControl = 3'b011;
        #10;

        // Test MAC
        A = 32'd5;
        B = 32'd3;
        Accumulator = 32'd7; // Starting value in the accumulator
        ALUControl = 3'b100;
        #10;

        // Add more test cases as needed
    end
    initial begin
      $dumpfile("ALU.vcd");
      $dumpvars(0);
    end
endmodule
