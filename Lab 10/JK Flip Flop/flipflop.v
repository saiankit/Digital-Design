module flipflop(d,clk,reset,q,qbar);

    input d, clk, reset;
    output reg q, qbar;
    
    always@(posedge clk)
        begin
        if(reset == 1)
            begin
                q <= 1'b0;
                qbar <= 1'b1;
            end
        else
            begin
                q <= d;      
                qbar <= ~d;  
            end 
        end
    
endmodule