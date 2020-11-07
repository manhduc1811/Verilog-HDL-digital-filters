module fir_4tap_tb;

    // Inputs
    reg Clk;
    reg signed [15:0] Xin;

    // Outputs
    wire signed [31:0] Yout;

    // Instantiate the Unit Under Test (UUT)
    fir_4tap uut (
        .Clk(Clk), 
        .Xin(Xin), 
        .Yout(Yout)
    );
    
    //Generate a clock with 10 ns clock period.
    initial Clk = 0;
    always #5 Clk =~Clk;

//Initialize and apply the inputs.
    initial begin
Xin =                0; #10; // Sample(1)
Xin =                0; #10; // Sample(2)
Xin =                0; #10; // Sample(3)
Xin =                0; #10; // Sample(4)
Xin =                0; #10; // Sample(5)
Xin =              -18; #10; // Sample(6)
Xin =              -44; #10; // Sample(7)
Xin =              100; #10; // Sample(8)
Xin =               84; #10; // Sample(9)
Xin =               -7; #10; // Sample(10)
Xin =               36; #10; // Sample(11)
Xin =               -4; #10; // Sample(12)
Xin =              -28; #10; // Sample(13)
Xin =              -93; #10; // Sample(14)
Xin =              -64; #10; // Sample(15)
Xin =              -31; #10; // Sample(16)
Xin =              -63; #10; // Sample(17)
Xin =              109; #10; // Sample(18)
Xin =              -93; #10; // Sample(19)
Xin =              -88; #10; // Sample(20)
Xin =               77; #10; // Sample(21)
Xin =                3; #10; // Sample(22)
Xin =               52; #10; // Sample(23)
Xin =               75; #10; // Sample(24)
Xin =               43; #10; // Sample(25)
Xin =              -88; #10; // Sample(26)
Xin =               65; #10; // Sample(27)
Xin =              104; #10; // Sample(28)
Xin =                0; #10; // Sample(29)
Xin =              -92; #10; // Sample(30)
Xin =              -51; #10; // Sample(31)
Xin =               14; #10; // Sample(32)
Xin =              -44; #10; // Sample(33)
Xin =               33; #10; // Sample(34)
Xin =              -93; #10; // Sample(35)
Xin =               75; #10; // Sample(36)
Xin =              -56; #10; // Sample(37)
Xin =              -60; #10; // Sample(38)
Xin =              -29; #10; // Sample(39)
Xin =               58; #10; // Sample(40)
Xin =              -41; #10; // Sample(41)
Xin =              101; #10; // Sample(42)
Xin =              -57; #10; // Sample(43)
Xin =                1; #10; // Sample(44)
Xin =              114; #10; // Sample(45)
Xin =               -8; #10; // Sample(46)
Xin =                0; #10; // Sample(47)
Xin =                0; #10; // Sample(48)
Xin =                0; #10; // Sample(49)
Xin =                0; #10; // Sample(50)
Xin =                0; #10; // Sample(51)
Xin =                0; #10; // Sample(52)
Xin =                0; #10; // Sample(53)
Xin =                0; #10; // Sample(54)
Xin =                0; #10; // Sample(55)
Xin =                0; #10; // Sample(56)
	  #40;
	  $stop;	
    end
      
endmodule
