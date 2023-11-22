module Register_File_tb();
    reg clk, rst;
    reg clk;
    reg rst;
    reg WE3;
    reg [4:0]A1;
    reg A2;
    reg A3;
    reg [31:0]WD3;
    wire [31:0]RD1;
    wire RD2;

    // Instantiate the module under test
    Register_File Register_File_inst (
        .clk(clk),
        .rst(rst),
        .clk(clk),
        .rst(rst),
        .WE3(WE3),
        .[4:0]A1([4:0]A1),
        .A2(A2),
        .A3(A3),
        .[31:0]WD3([31:0]WD3),
        .[31:0]RD1([31:0]RD1),
        .RD2(RD2)
    );

    // Test input vectors
    initial begin
        clk = 0;
        rst = 0;
        WE3 = 0;
        [4:0]A1 = 0;
        A2 = 0;
        A3 = 0;
        [31:0]WD3 = 0;
        #10; // Delay for simulation
        clk = 0;
        rst = 0;
        WE3 = 0;
        [4:0]A1 = 0;
        A2 = 0;
        A3 = 0;
        [31:0]WD3 = 1;
        #10; // Delay for simulation
        clk = 0;
        rst = 0;
        WE3 = 0;
        [4:0]A1 = 0;
        A2 = 0;
        A3 = 1;
        [31:0]WD3 = 0;
        #10; // Delay for simulation
        clk = 0;
        rst = 0;
        WE3 = 0;
        [4:0]A1 = 0;
        A2 = 0;
        A3 = 1;
        [31:0]WD3 = 1;
        #10; // Delay for simulation
        clk = 0;
        rst = 0;
        WE3 = 0;
        [4:0]A1 = 0;
        A2 = 1;
        A3 = 0;
        [31:0]WD3 = 0;
        #10; // Delay for simulation
        clk = 0;
        rst = 0;
        WE3 = 0;
        [4:0]A1 = 0;
        A2 = 1;
        A3 = 0;
        [31:0]WD3 = 1;
        #10; // Delay for simulation
        clk = 0;
        rst = 0;
        WE3 = 0;
        [4:0]A1 = 0;
        A2 = 1;
        A3 = 1;
        [31:0]WD3 = 0;
        #10; // Delay for simulation
        clk = 0;
        rst = 0;
        WE3 = 0;
        [4:0]A1 = 0;
        A2 = 1;
        A3 = 1;
        [31:0]WD3 = 1;
        #10; // Delay for simulation
        clk = 0;
        rst = 0;
        WE3 = 0;
        [4:0]A1 = 1;
        A2 = 0;
        A3 = 0;
        [31:0]WD3 = 0;
        #10; // Delay for simulation
        clk = 0;
        rst = 0;
        WE3 = 0;
        [4:0]A1 = 1;
        A2 = 0;
        A3 = 0;
        [31:0]WD3 = 1;
        #10; // Delay for simulation
        clk = 0;
        rst = 0;
        WE3 = 0;
        [4:0]A1 = 1;
        A2 = 0;
        A3 = 1;
        [31:0]WD3 = 0;
        #10; // Delay for simulation
        clk = 0;
        rst = 0;
        WE3 = 0;
        [4:0]A1 = 1;
        A2 = 0;
        A3 = 1;
        [31:0]WD3 = 1;
        #10; // Delay for simulation
        clk = 0;
        rst = 0;
        WE3 = 0;
        [4:0]A1 = 1;
        A2 = 1;
        A3 = 0;
        [31:0]WD3 = 0;
        #10; // Delay for simulation
        clk = 0;
        rst = 0;
        WE3 = 0;
        [4:0]A1 = 1;
        A2 = 1;
        A3 = 0;
        [31:0]WD3 = 1;
        #10; // Delay for simulation
        clk = 0;
        rst = 0;
        WE3 = 0;
        [4:0]A1 = 1;
        A2 = 1;
        A3 = 1;
        [31:0]WD3 = 0;
        #10; // Delay for simulation
        clk = 0;
        rst = 0;
        WE3 = 0;
        [4:0]A1 = 1;
        A2 = 1;
        A3 = 1;
        [31:0]WD3 = 1;
        #10; // Delay for simulation
        clk = 0;
        rst = 0;
        WE3 = 1;
        [4:0]A1 = 0;
        A2 = 0;
        A3 = 0;
        [31:0]WD3 = 0;
        #10; // Delay for simulation
        clk = 0;
        rst = 0;
        WE3 = 1;
        [4:0]A1 = 0;
        A2 = 0;
        A3 = 0;
        [31:0]WD3 = 1;
        #10; // Delay for simulation
        clk = 0;
        rst = 0;
        WE3 = 1;
        [4:0]A1 = 0;
        A2 = 0;
        A3 = 1;
        [31:0]WD3 = 0;
        #10; // Delay for simulation
        clk = 0;
        rst = 0;
        WE3 = 1;
        [4:0]A1 = 0;
        A2 = 0;
        A3 = 1;
        [31:0]WD3 = 1;
        #10; // Delay for simulation
        clk = 0;
        rst = 0;
        WE3 = 1;
        [4:0]A1 = 0;
        A2 = 1;
        A3 = 0;
        [31:0]WD3 = 0;
        #10; // Delay for simulation
        clk = 0;
        rst = 0;
        WE3 = 1;
        [4:0]A1 = 0;
        A2 = 1;
        A3 = 0;
        [31:0]WD3 = 1;
        #10; // Delay for simulation
        clk = 0;
        rst = 0;
        WE3 = 1;
        [4:0]A1 = 0;
        A2 = 1;
        A3 = 1;
        [31:0]WD3 = 0;
        #10; // Delay for simulation
        clk = 0;
        rst = 0;
        WE3 = 1;
        [4:0]A1 = 0;
        A2 = 1;
        A3 = 1;
        [31:0]WD3 = 1;
        #10; // Delay for simulation
        clk = 0;
        rst = 0;
        WE3 = 1;
        [4:0]A1 = 1;
        A2 = 0;
        A3 = 0;
        [31:0]WD3 = 0;
        #10; // Delay for simulation
        clk = 0;
        rst = 0;
        WE3 = 1;
        [4:0]A1 = 1;
        A2 = 0;
        A3 = 0;
        [31:0]WD3 = 1;
        #10; // Delay for simulation
        clk = 0;
        rst = 0;
        WE3 = 1;
        [4:0]A1 = 1;
        A2 = 0;
        A3 = 1;
        [31:0]WD3 = 0;
        #10; // Delay for simulation
        clk = 0;
        rst = 0;
        WE3 = 1;
        [4:0]A1 = 1;
        A2 = 0;
        A3 = 1;
        [31:0]WD3 = 1;
        #10; // Delay for simulation
        clk = 0;
        rst = 0;
        WE3 = 1;
        [4:0]A1 = 1;
        A2 = 1;
        A3 = 0;
        [31:0]WD3 = 0;
        #10; // Delay for simulation
        clk = 0;
        rst = 0;
        WE3 = 1;
        [4:0]A1 = 1;
        A2 = 1;
        A3 = 0;
        [31:0]WD3 = 1;
        #10; // Delay for simulation
        clk = 0;
        rst = 0;
        WE3 = 1;
        [4:0]A1 = 1;
        A2 = 1;
        A3 = 1;
        [31:0]WD3 = 0;
        #10; // Delay for simulation
        clk = 0;
        rst = 0;
        WE3 = 1;
        [4:0]A1 = 1;
        A2 = 1;
        A3 = 1;
        [31:0]WD3 = 1;
        #10; // Delay for simulation
        clk = 0;
        rst = 1;
        WE3 = 0;
        [4:0]A1 = 0;
        A2 = 0;
        A3 = 0;
        [31:0]WD3 = 0;
        #10; // Delay for simulation
        clk = 0;
        rst = 1;
        WE3 = 0;
        [4:0]A1 = 0;
        A2 = 0;
        A3 = 0;
        [31:0]WD3 = 1;
        #10; // Delay for simulation
        clk = 0;
        rst = 1;
        WE3 = 0;
        [4:0]A1 = 0;
        A2 = 0;
        A3 = 1;
        [31:0]WD3 = 0;
        #10; // Delay for simulation
        clk = 0;
        rst = 1;
        WE3 = 0;
        [4:0]A1 = 0;
        A2 = 0;
        A3 = 1;
        [31:0]WD3 = 1;
        #10; // Delay for simulation
        clk = 0;
        rst = 1;
        WE3 = 0;
        [4:0]A1 = 0;
        A2 = 1;
        A3 = 0;
        [31:0]WD3 = 0;
        #10; // Delay for simulation
        clk = 0;
        rst = 1;
        WE3 = 0;
        [4:0]A1 = 0;
        A2 = 1;
        A3 = 0;
        [31:0]WD3 = 1;
        #10; // Delay for simulation
        clk = 0;
        rst = 1;
        WE3 = 0;
        [4:0]A1 = 0;
        A2 = 1;
        A3 = 1;
        [31:0]WD3 = 0;
        #10; // Delay for simulation
        clk = 0;
        rst = 1;
        WE3 = 0;
        [4:0]A1 = 0;
        A2 = 1;
        A3 = 1;
        [31:0]WD3 = 1;
        #10; // Delay for simulation
        clk = 0;
        rst = 1;
        WE3 = 0;
        [4:0]A1 = 1;
        A2 = 0;
        A3 = 0;
        [31:0]WD3 = 0;
        #10; // Delay for simulation
        clk = 0;
        rst = 1;
        WE3 = 0;
        [4:0]A1 = 1;
        A2 = 0;
        A3 = 0;
        [31:0]WD3 = 1;
        #10; // Delay for simulation
        clk = 0;
        rst = 1;
        WE3 = 0;
        [4:0]A1 = 1;
        A2 = 0;
        A3 = 1;
        [31:0]WD3 = 0;
        #10; // Delay for simulation
        clk = 0;
        rst = 1;
        WE3 = 0;
        [4:0]A1 = 1;
        A2 = 0;
        A3 = 1;
        [31:0]WD3 = 1;
        #10; // Delay for simulation
        clk = 0;
        rst = 1;
        WE3 = 0;
        [4:0]A1 = 1;
        A2 = 1;
        A3 = 0;
        [31:0]WD3 = 0;
        #10; // Delay for simulation
        clk = 0;
        rst = 1;
        WE3 = 0;
        [4:0]A1 = 1;
        A2 = 1;
        A3 = 0;
        [31:0]WD3 = 1;
        #10; // Delay for simulation
        clk = 0;
        rst = 1;
        WE3 = 0;
        [4:0]A1 = 1;
        A2 = 1;
        A3 = 1;
        [31:0]WD3 = 0;
        #10; // Delay for simulation
        clk = 0;
        rst = 1;
        WE3 = 0;
        [4:0]A1 = 1;
        A2 = 1;
        A3 = 1;
        [31:0]WD3 = 1;
        #10; // Delay for simulation
        clk = 0;
        rst = 1;
        WE3 = 1;
        [4:0]A1 = 0;
        A2 = 0;
        A3 = 0;
        [31:0]WD3 = 0;
        #10; // Delay for simulation
        clk = 0;
        rst = 1;
        WE3 = 1;
        [4:0]A1 = 0;
        A2 = 0;
        A3 = 0;
        [31:0]WD3 = 1;
        #10; // Delay for simulation
        clk = 0;
        rst = 1;
        WE3 = 1;
        [4:0]A1 = 0;
        A2 = 0;
        A3 = 1;
        [31:0]WD3 = 0;
        #10; // Delay for simulation
        clk = 0;
        rst = 1;
        WE3 = 1;
        [4:0]A1 = 0;
        A2 = 0;
        A3 = 1;
        [31:0]WD3 = 1;
        #10; // Delay for simulation
        clk = 0;
        rst = 1;
        WE3 = 1;
        [4:0]A1 = 0;
        A2 = 1;
        A3 = 0;
        [31:0]WD3 = 0;
        #10; // Delay for simulation
        clk = 0;
        rst = 1;
        WE3 = 1;
        [4:0]A1 = 0;
        A2 = 1;
        A3 = 0;
        [31:0]WD3 = 1;
        #10; // Delay for simulation
        clk = 0;
        rst = 1;
        WE3 = 1;
        [4:0]A1 = 0;
        A2 = 1;
        A3 = 1;
        [31:0]WD3 = 0;
        #10; // Delay for simulation
        clk = 0;
        rst = 1;
        WE3 = 1;
        [4:0]A1 = 0;
        A2 = 1;
        A3 = 1;
        [31:0]WD3 = 1;
        #10; // Delay for simulation
        clk = 0;
        rst = 1;
        WE3 = 1;
        [4:0]A1 = 1;
        A2 = 0;
        A3 = 0;
        [31:0]WD3 = 0;
        #10; // Delay for simulation
        clk = 0;
        rst = 1;
        WE3 = 1;
        [4:0]A1 = 1;
        A2 = 0;
        A3 = 0;
        [31:0]WD3 = 1;
        #10; // Delay for simulation
        clk = 0;
        rst = 1;
        WE3 = 1;
        [4:0]A1 = 1;
        A2 = 0;
        A3 = 1;
        [31:0]WD3 = 0;
        #10; // Delay for simulation
        clk = 0;
        rst = 1;
        WE3 = 1;
        [4:0]A1 = 1;
        A2 = 0;
        A3 = 1;
        [31:0]WD3 = 1;
        #10; // Delay for simulation
        clk = 0;
        rst = 1;
        WE3 = 1;
        [4:0]A1 = 1;
        A2 = 1;
        A3 = 0;
        [31:0]WD3 = 0;
        #10; // Delay for simulation
        clk = 0;
        rst = 1;
        WE3 = 1;
        [4:0]A1 = 1;
        A2 = 1;
        A3 = 0;
        [31:0]WD3 = 1;
        #10; // Delay for simulation
        clk = 0;
        rst = 1;
        WE3 = 1;
        [4:0]A1 = 1;
        A2 = 1;
        A3 = 1;
        [31:0]WD3 = 0;
        #10; // Delay for simulation
        clk = 0;
        rst = 1;
        WE3 = 1;
        [4:0]A1 = 1;
        A2 = 1;
        A3 = 1;
        [31:0]WD3 = 1;
        #10; // Delay for simulation
        clk = 1;
        rst = 0;
        WE3 = 0;
        [4:0]A1 = 0;
        A2 = 0;
        A3 = 0;
        [31:0]WD3 = 0;
        #10; // Delay for simulation
        clk = 1;
        rst = 0;
        WE3 = 0;
        [4:0]A1 = 0;
        A2 = 0;
        A3 = 0;
        [31:0]WD3 = 1;
        #10; // Delay for simulation
        clk = 1;
        rst = 0;
        WE3 = 0;
        [4:0]A1 = 0;
        A2 = 0;
        A3 = 1;
        [31:0]WD3 = 0;
        #10; // Delay for simulation
        clk = 1;
        rst = 0;
        WE3 = 0;
        [4:0]A1 = 0;
        A2 = 0;
        A3 = 1;
        [31:0]WD3 = 1;
        #10; // Delay for simulation
        clk = 1;
        rst = 0;
        WE3 = 0;
        [4:0]A1 = 0;
        A2 = 1;
        A3 = 0;
        [31:0]WD3 = 0;
        #10; // Delay for simulation
        clk = 1;
        rst = 0;
        WE3 = 0;
        [4:0]A1 = 0;
        A2 = 1;
        A3 = 0;
        [31:0]WD3 = 1;
        #10; // Delay for simulation
        clk = 1;
        rst = 0;
        WE3 = 0;
        [4:0]A1 = 0;
        A2 = 1;
        A3 = 1;
        [31:0]WD3 = 0;
        #10; // Delay for simulation
        clk = 1;
        rst = 0;
        WE3 = 0;
        [4:0]A1 = 0;
        A2 = 1;
        A3 = 1;
        [31:0]WD3 = 1;
        #10; // Delay for simulation
        clk = 1;
        rst = 0;
        WE3 = 0;
        [4:0]A1 = 1;
        A2 = 0;
        A3 = 0;
        [31:0]WD3 = 0;
        #10; // Delay for simulation
        clk = 1;
        rst = 0;
        WE3 = 0;
        [4:0]A1 = 1;
        A2 = 0;
        A3 = 0;
        [31:0]WD3 = 1;
        #10; // Delay for simulation
        clk = 1;
        rst = 0;
        WE3 = 0;
        [4:0]A1 = 1;
        A2 = 0;
        A3 = 1;
        [31:0]WD3 = 0;
        #10; // Delay for simulation
        clk = 1;
        rst = 0;
        WE3 = 0;
        [4:0]A1 = 1;
        A2 = 0;
        A3 = 1;
        [31:0]WD3 = 1;
        #10; // Delay for simulation
        clk = 1;
        rst = 0;
        WE3 = 0;
        [4:0]A1 = 1;
        A2 = 1;
        A3 = 0;
        [31:0]WD3 = 0;
        #10; // Delay for simulation
        clk = 1;
        rst = 0;
        WE3 = 0;
        [4:0]A1 = 1;
        A2 = 1;
        A3 = 0;
        [31:0]WD3 = 1;
        #10; // Delay for simulation
        clk = 1;
        rst = 0;
        WE3 = 0;
        [4:0]A1 = 1;
        A2 = 1;
        A3 = 1;
        [31:0]WD3 = 0;
        #10; // Delay for simulation
        clk = 1;
        rst = 0;
        WE3 = 0;
        [4:0]A1 = 1;
        A2 = 1;
        A3 = 1;
        [31:0]WD3 = 1;
        #10; // Delay for simulation
        clk = 1;
        rst = 0;
        WE3 = 1;
        [4:0]A1 = 0;
        A2 = 0;
        A3 = 0;
        [31:0]WD3 = 0;
        #10; // Delay for simulation
        clk = 1;
        rst = 0;
        WE3 = 1;
        [4:0]A1 = 0;
        A2 = 0;
        A3 = 0;
        [31:0]WD3 = 1;
        #10; // Delay for simulation
        clk = 1;
        rst = 0;
        WE3 = 1;
        [4:0]A1 = 0;
        A2 = 0;
        A3 = 1;
        [31:0]WD3 = 0;
        #10; // Delay for simulation
        clk = 1;
        rst = 0;
        WE3 = 1;
        [4:0]A1 = 0;
        A2 = 0;
        A3 = 1;
        [31:0]WD3 = 1;
        #10; // Delay for simulation
        clk = 1;
        rst = 0;
        WE3 = 1;
        [4:0]A1 = 0;
        A2 = 1;
        A3 = 0;
        [31:0]WD3 = 0;
        #10; // Delay for simulation
        clk = 1;
        rst = 0;
        WE3 = 1;
        [4:0]A1 = 0;
        A2 = 1;
        A3 = 0;
        [31:0]WD3 = 1;
        #10; // Delay for simulation
        clk = 1;
        rst = 0;
        WE3 = 1;
        [4:0]A1 = 0;
        A2 = 1;
        A3 = 1;
        [31:0]WD3 = 0;
        #10; // Delay for simulation
        clk = 1;
        rst = 0;
        WE3 = 1;
        [4:0]A1 = 0;
        A2 = 1;
        A3 = 1;
        [31:0]WD3 = 1;
        #10; // Delay for simulation
        clk = 1;
        rst = 0;
        WE3 = 1;
        [4:0]A1 = 1;
        A2 = 0;
        A3 = 0;
        [31:0]WD3 = 0;
        #10; // Delay for simulation
        clk = 1;
        rst = 0;
        WE3 = 1;
        [4:0]A1 = 1;
        A2 = 0;
        A3 = 0;
        [31:0]WD3 = 1;
        #10; // Delay for simulation
        clk = 1;
        rst = 0;
        WE3 = 1;
        [4:0]A1 = 1;
        A2 = 0;
        A3 = 1;
        [31:0]WD3 = 0;
        #10; // Delay for simulation
        clk = 1;
        rst = 0;
        WE3 = 1;
        [4:0]A1 = 1;
        A2 = 0;
        A3 = 1;
        [31:0]WD3 = 1;
        #10; // Delay for simulation
        clk = 1;
        rst = 0;
        WE3 = 1;
        [4:0]A1 = 1;
        A2 = 1;
        A3 = 0;
        [31:0]WD3 = 0;
        #10; // Delay for simulation
        clk = 1;
        rst = 0;
        WE3 = 1;
        [4:0]A1 = 1;
        A2 = 1;
        A3 = 0;
        [31:0]WD3 = 1;
        #10; // Delay for simulation
        clk = 1;
        rst = 0;
        WE3 = 1;
        [4:0]A1 = 1;
        A2 = 1;
        A3 = 1;
        [31:0]WD3 = 0;
        #10; // Delay for simulation
        clk = 1;
        rst = 0;
        WE3 = 1;
        [4:0]A1 = 1;
        A2 = 1;
        A3 = 1;
        [31:0]WD3 = 1;
        #10; // Delay for simulation
        clk = 1;
        rst = 1;
        WE3 = 0;
        [4:0]A1 = 0;
        A2 = 0;
        A3 = 0;
        [31:0]WD3 = 0;
        #10; // Delay for simulation
        clk = 1;
        rst = 1;
        WE3 = 0;
        [4:0]A1 = 0;
        A2 = 0;
        A3 = 0;
        [31:0]WD3 = 1;
        #10; // Delay for simulation
        clk = 1;
        rst = 1;
        WE3 = 0;
        [4:0]A1 = 0;
        A2 = 0;
        A3 = 1;
        [31:0]WD3 = 0;
        #10; // Delay for simulation
        clk = 1;
        rst = 1;
        WE3 = 0;
        [4:0]A1 = 0;
        A2 = 0;
        A3 = 1;
        [31:0]WD3 = 1;
        #10; // Delay for simulation
        clk = 1;
        rst = 1;
        WE3 = 0;
        [4:0]A1 = 0;
        A2 = 1;
        A3 = 0;
        [31:0]WD3 = 0;
        #10; // Delay for simulation
        clk = 1;
        rst = 1;
        WE3 = 0;
        [4:0]A1 = 0;
        A2 = 1;
        A3 = 0;
        [31:0]WD3 = 1;
        #10; // Delay for simulation
        clk = 1;
        rst = 1;
        WE3 = 0;
        [4:0]A1 = 0;
        A2 = 1;
        A3 = 1;
        [31:0]WD3 = 0;
        #10; // Delay for simulation
        clk = 1;
        rst = 1;
        WE3 = 0;
        [4:0]A1 = 0;
        A2 = 1;
        A3 = 1;
        [31:0]WD3 = 1;
        #10; // Delay for simulation
        clk = 1;
        rst = 1;
        WE3 = 0;
        [4:0]A1 = 1;
        A2 = 0;
        A3 = 0;
        [31:0]WD3 = 0;
        #10; // Delay for simulation
        clk = 1;
        rst = 1;
        WE3 = 0;
        [4:0]A1 = 1;
        A2 = 0;
        A3 = 0;
        [31:0]WD3 = 1;
        #10; // Delay for simulation
        clk = 1;
        rst = 1;
        WE3 = 0;
        [4:0]A1 = 1;
        A2 = 0;
        A3 = 1;
        [31:0]WD3 = 0;
        #10; // Delay for simulation
        clk = 1;
        rst = 1;
        WE3 = 0;
        [4:0]A1 = 1;
        A2 = 0;
        A3 = 1;
        [31:0]WD3 = 1;
        #10; // Delay for simulation
        clk = 1;
        rst = 1;
        WE3 = 0;
        [4:0]A1 = 1;
        A2 = 1;
        A3 = 0;
        [31:0]WD3 = 0;
        #10; // Delay for simulation
        clk = 1;
        rst = 1;
        WE3 = 0;
        [4:0]A1 = 1;
        A2 = 1;
        A3 = 0;
        [31:0]WD3 = 1;
        #10; // Delay for simulation
        clk = 1;
        rst = 1;
        WE3 = 0;
        [4:0]A1 = 1;
        A2 = 1;
        A3 = 1;
        [31:0]WD3 = 0;
        #10; // Delay for simulation
        clk = 1;
        rst = 1;
        WE3 = 0;
        [4:0]A1 = 1;
        A2 = 1;
        A3 = 1;
        [31:0]WD3 = 1;
        #10; // Delay for simulation
        clk = 1;
        rst = 1;
        WE3 = 1;
        [4:0]A1 = 0;
        A2 = 0;
        A3 = 0;
        [31:0]WD3 = 0;
        #10; // Delay for simulation
        clk = 1;
        rst = 1;
        WE3 = 1;
        [4:0]A1 = 0;
        A2 = 0;
        A3 = 0;
        [31:0]WD3 = 1;
        #10; // Delay for simulation
        clk = 1;
        rst = 1;
        WE3 = 1;
        [4:0]A1 = 0;
        A2 = 0;
        A3 = 1;
        [31:0]WD3 = 0;
        #10; // Delay for simulation
        clk = 1;
        rst = 1;
        WE3 = 1;
        [4:0]A1 = 0;
        A2 = 0;
        A3 = 1;
        [31:0]WD3 = 1;
        #10; // Delay for simulation
        clk = 1;
        rst = 1;
        WE3 = 1;
        [4:0]A1 = 0;
        A2 = 1;
        A3 = 0;
        [31:0]WD3 = 0;
        #10; // Delay for simulation
        clk = 1;
        rst = 1;
        WE3 = 1;
        [4:0]A1 = 0;
        A2 = 1;
        A3 = 0;
        [31:0]WD3 = 1;
        #10; // Delay for simulation
        clk = 1;
        rst = 1;
        WE3 = 1;
        [4:0]A1 = 0;
        A2 = 1;
        A3 = 1;
        [31:0]WD3 = 0;
        #10; // Delay for simulation
        clk = 1;
        rst = 1;
        WE3 = 1;
        [4:0]A1 = 0;
        A2 = 1;
        A3 = 1;
        [31:0]WD3 = 1;
        #10; // Delay for simulation
        clk = 1;
        rst = 1;
        WE3 = 1;
        [4:0]A1 = 1;
        A2 = 0;
        A3 = 0;
        [31:0]WD3 = 0;
        #10; // Delay for simulation
        clk = 1;
        rst = 1;
        WE3 = 1;
        [4:0]A1 = 1;
        A2 = 0;
        A3 = 0;
        [31:0]WD3 = 1;
        #10; // Delay for simulation
        clk = 1;
        rst = 1;
        WE3 = 1;
        [4:0]A1 = 1;
        A2 = 0;
        A3 = 1;
        [31:0]WD3 = 0;
        #10; // Delay for simulation
        clk = 1;
        rst = 1;
        WE3 = 1;
        [4:0]A1 = 1;
        A2 = 0;
        A3 = 1;
        [31:0]WD3 = 1;
        #10; // Delay for simulation
        clk = 1;
        rst = 1;
        WE3 = 1;
        [4:0]A1 = 1;
        A2 = 1;
        A3 = 0;
        [31:0]WD3 = 0;
        #10; // Delay for simulation
        clk = 1;
        rst = 1;
        WE3 = 1;
        [4:0]A1 = 1;
        A2 = 1;
        A3 = 0;
        [31:0]WD3 = 1;
        #10; // Delay for simulation
        clk = 1;
        rst = 1;
        WE3 = 1;
        [4:0]A1 = 1;
        A2 = 1;
        A3 = 1;
        [31:0]WD3 = 0;
        #10; // Delay for simulation
        clk = 1;
        rst = 1;
        WE3 = 1;
        [4:0]A1 = 1;
        A2 = 1;
        A3 = 1;
        [31:0]WD3 = 1;
        #10; // Delay for simulation
        // Your test bench logic goes here
    end

endmodule
