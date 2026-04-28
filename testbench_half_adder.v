 module testbench;
    
    reg a_tb,b_tb;
    
    wire sum_tb,carry_tb;
    
    half_adder dut(a_tb,b_tb,sum_tb,carry_tb);
    
    initial
        begin
          {a_tb,b_tb} = 2'b00;
        end
    
    initial
        begin
            a_tb = 0;
            b_tb = 1;
            $monitor("The value of sum is %d and carry is %d",sum_tb,carry_tb);
            #1;
        end

endmodule