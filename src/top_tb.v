module top_tb;

    // Inputs
    reg EN = 0;
    reg CLK = 0;

    // Outputs
    wire [7:0] OUT;
    wire [6:0] HEX0;
    wire [6:0] HEX1;
    wire clk1hz;

    // Instantiate the top module
    top dut (
        .EN(EN),
        .CLK(CLK),
        .OUT(OUT),
        .HEX0(HEX0),
        .HEX1(HEX1),
        .clk1hz(clk1hz)
    );

    // Clock generation
    always begin
        #5 CLK = ~CLK;  // Assuming a 10ns clock period
    end

    // Simulation control
    initial begin
        $display("Starting simulation...");
        EN = 1;  // Enable the design
        CLK = 0; // Initialize CLK

        // Run the simulation for a while
        #100; // Adjust this delay as needed

        // Disable the design
        EN = 0;
        
        $display("Simulation complete.");
        $finish;
    end

    // Display output values during simulation
    always @(posedge CLK) begin
        $display("OUT = %h", OUT);
        $display("HEX0 = %h", HEX0);
        $display("HEX1 = %h", HEX1);
        $display("clk1hz = %b", clk1hz);
    end

endmodule

// Run the simulation
initial begin
    $dumpfile("sim_dump.vcd");
    $dumpvars(0, top_tb);
    $display("Starting simulation...");
    top_tb tb();
    #1000; // Simulate for some time
    $display("Simulation complete.");
    $finish;
end
