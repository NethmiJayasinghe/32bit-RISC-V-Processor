module Mux_tb();
    reg clk, rst;
    reg [31:0]a;
    reg b;
    reg s;
    wire [31:0]c;

    // Instantiate the module under test
    Mux Mux_inst (
        .clk(clk),
        .rst(rst),
        .[31:0]a([31:0]a),
        .b(b),
        .s(s),
        .[31:0]c([31:0]c)
    );

    // VCD file dumping commands
    $dumpfile("Mux.vcd");
    $dumpvars(0);

    // Test input vectors
    initial begin
        [31:0]a = 32'h43392179;
        b = 32'hF0413D55;
        s = 32'h1A089238;

        // Test bench logic goes here for test case 1
        [31:0]a = 32'hD41202AB;
        b = 32'h30FB594B;
        s = 32'h2FBE4774;

        // Test bench logic goes here for test case 2
        [31:0]a = 32'hB540ED3A;
        b = 32'h84F6200A;
        s = 32'h2BC62575;

        // Test bench logic goes here for test case 3
        [31:0]a = 32'hEF0AE91D;
        b = 32'h991409ED;
        s = 32'h7041F024;

        // Test bench logic goes here for test case 4
        [31:0]a = 32'h1287CC44;
        b = 32'hF9385D19;
        s = 32'hF16CE722;

        // Test bench logic goes here for test case 5
        [31:0]a = 32'h93274668;
        b = 32'hA7A89C28;
        s = 32'hB4606EBA;

        // Test bench logic goes here for test case 6
        [31:0]a = 32'hE1E6B9E4;
        b = 32'h9A8AE647;
        s = 32'hDC6BA302;

        // Test bench logic goes here for test case 7
        [31:0]a = 32'h04D99E6A;
        b = 32'h458AB297;
        s = 32'h7B89B7B3;

        // Test bench logic goes here for test case 8
        [31:0]a = 32'h5C62BE52;
        b = 32'h57A2938D;
        s = 32'hB8F703FD;

        // Test bench logic goes here for test case 9
        [31:0]a = 32'hE229E937;
        b = 32'h083380B7;
        s = 32'h4C2589EF;

        // Test bench logic goes here for test case 10
    end

endmodule
