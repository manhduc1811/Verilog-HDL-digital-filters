module fir_4tap(
        input Clk,
        input signed [15:0] Xin,
        output reg signed [31:0] Yout
        );
    
//Internal variables.
    wire signed   [15:0] H0,H1,H2,H3;
    wire signed   [31:0] MCM0,MCM1,MCM2,MCM3,add_out1,add_out2,add_out3;
    wire signed   [31:0] Q1,Q2,Q3;
    
//filter coefficient initializations.
//H = [1 1 1 1].
    assign H0 = 1;
    assign H1 = 1;
    assign H2 = 1;
    assign H3 = 1;

//Multiple constant multiplications.
    assign MCM3 = H3*Xin;
    assign MCM2 = H2*Xin;
    assign MCM1 = H1*Xin;
    assign MCM0 = H0*Xin;

//adders
    assign add_out1 = Q1 + MCM2;
    assign add_out2 = Q2 + MCM1;
    assign add_out3 = Q3 + MCM0;    

//flipflop instantiations (for introducing a delay).
    DFF dff1 (.Clk(Clk),.D(MCM3),.Q(Q1));
    DFF dff2 (.Clk(Clk),.D(add_out1),.Q(Q2));
    DFF dff3 (.Clk(Clk),.D(add_out2),.Q(Q3));

//Assign the last adder output to final output.
    always@ (posedge Clk)
        Yout <= add_out3;

endmodule

