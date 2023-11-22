module PC_Module_tb();
    reg clk, rst;
    reg clk;
    reg rst;
    reg [31:0]PC_Next;
    wire [31:0]PC;

    // Instantiate the module under test
    PC_Module PC_Module_inst (
        .clk(clk),
        .rst(rst),
        .clk(clk),
        .rst(rst),
        .[31:0]PC_Next([31:0]PC_Next),
        .[31:0]PC([31:0]PC)
    );

    // Test input vectors
    initial begin
        clk = 32'h49115205;
        rst = 32'h387A5B3E;
        [31:0]PC_Next = 32'hFCB47047;

        // Your test bench logic goes here
    end

    // Monitor output signals
    always @(posedge clk) begin
        // Your output monitoring code goes here
    end

endmodule
