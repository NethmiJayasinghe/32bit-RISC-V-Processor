module ALU(A, B, Accumulator, Result, ALUControl, OverFlow, Carry, Zero, Negative);
    input [31:0] A, B, Accumulator;
    input [3:0] ALUControl; // Ensure this is 4 bits
    output reg Carry, OverFlow, Zero, Negative;
    output reg [31:0] Result;

    wire [31:0] Sum;
    wire [63:0] MultResult; // 64-bit wire to hold the multiplication result

    // Perform the addition or subtraction based on ALUControl
    assign Sum = (ALUControl[0] == 1'b0) ? A + B : (A + ((~B) + 1));

    // Perform the multiplication
    assign MultResult = A * B;

    // Define the ALU operation based on ALUControl
    always @(*) begin
        case (ALUControl)
            3'b000, 3'b001: begin
                {Carry, Result} = Sum;
                OverFlow = ((Sum[31] ^ A[31]) & (~(ALUControl[0] ^ B[31] ^ A[31])) & (~ALUControl[1]));
            end
            3'b010: Result = A & B;
            3'b011: Result = A | B;
            3'b101: Result = {{32{1'b0}}, (Sum[31])};
            3'b100: Result = MultResult[31:0] + Accumulator; // MAC Operation
            default: Result = 32'd0;
        endcase

        // Update flags
        Zero = &(~Result);
        Negative = Result[31];
    end

endmodule
