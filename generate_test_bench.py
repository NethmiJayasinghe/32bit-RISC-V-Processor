import re
import random
import argparse
import subprocess
import os

def extract_verilog_ports(verilog_file):
    input_ports = []
    output_ports = []

    with open(verilog_file, 'r') as file:
        inside_module = False

        for line in file:
            line = line.strip().split('//', 1)[0]  # Remove comments
            if not line:
                continue

            if line.startswith("module"):
                inside_module = True
                continue
            elif line.startswith("endmodule"):
                inside_module = False
                break

            if inside_module:
                if line.startswith("input"):
                    port = line.split(' ', 1)[1].rstrip(';').split(',')
                    input_ports.extend([p.strip() for p in port])
                elif line.startswith("output"):
                    port = line.split(' ', 1)[1].rstrip(';').split(',')
                    output_ports.extend([p.strip() for p in port])

    return input_ports, output_ports

def generate_test_bench(module_name, input_signals, output_signals):
    tb_code = f"module {module_name}_tb();\n"
    tb_code += "    reg clk, rst;\n"
    
    for signal in input_signals:
        tb_code += f"    reg {signal};\n"
    
    for signal in output_signals:
        tb_code += f"    wire {signal};\n"
    
    tb_code += f"\n    // Instantiate the module under test\n"
    tb_code += f"    {module_name} {module_name}_inst (\n"
    tb_code += f"        .clk(clk),\n"
    tb_code += f"        .rst(rst),\n"
    
    for signal in input_signals:
        tb_code += f"        .{signal}({signal}),\n"
    
    for signal in output_signals:
        tb_code += f"        .{signal}({signal}),\n"
    
    tb_code = tb_code[:-2]  # Remove the trailing comma and newline
    tb_code += f"\n    );\n"
    
    tb_code += f"\n    // VCD file dumping commands\n"
    tb_code += f'    $dumpfile("{module_name}.vcd");\n'
    tb_code += f'    $dumpvars(0);\n'
    
    tb_code += f"\n    // Test input vectors\n"
    tb_code += f"    initial begin\n"
    
    for i in range(10):
        for signal in input_signals:
            # Generate random input values for 10 test cases
            value = random.randint(0, 2**32 - 1)
            tb_code += f"        {signal} = 32'h{value:08X};\n"

        tb_code += f"\n        // Test bench logic goes here for test case {i + 1}\n"
    
    tb_code += f"    end\n"
    
    tb_code += f"\nendmodule\n"
    
    return tb_code

def main():
    parser = argparse.ArgumentParser(description="Generate a Verilog test bench and run simulation with VCD file dumping for a module.")
    parser.add_argument("verilog_file", type=str, help="Path to the Verilog module file")

    args = parser.parse_args()
    
    verilog_file = args.verilog_file
    input_ports, output_ports = extract_verilog_ports(verilog_file)

    # Print the extracted input and output ports
    print("Input Ports:", input_ports)
    print("Output Ports:", output_ports)

    # Generate the test bench code
    module_name = re.search(r'module (\w+)', open(verilog_file).read()).group(1)
    test_bench_code = generate_test_bench(module_name, input_ports, output_ports)

    # Save the generated test bench code to a file
    tb_filename = f"{module_name}_tb.v"
    with open(tb_filename, "w") as tb_file:
        tb_file.write(test_bench_code)

    # Compile the Verilog test bench
    vvp_filename = f"{module_name}_tb.vvp"
    subprocess.run(["iverilog", "-o", vvp_filename, tb_filename])

    # Run the simulation using the compiled VVP file
    subprocess.run(["vvp", vvp_filename])

    # Move the VCD file to the module's directory for each test case
    for i in range(10):
        vcd_filename = f"{module_name}_{i}.vcd"
        os.rename(f"{module_name}.vcd", os.path.join(os.path.dirname(verilog_file), vcd_filename))

if __name__ == "__main__":
    main()
