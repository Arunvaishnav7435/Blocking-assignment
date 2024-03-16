//SV Topics : Procedural assignment
//Problem statement : creating a register using procedural blocking assignment

//======================================

module cc(out, clock, reset, in);
  input clock, reset, in;
  output reg out;  //using in procedural assignment so should be reg
  reg a, b, c;
  
  always@(posedge clock)   //at posedge of clock to create FF
    begin
      if(reset)	
        begin
          a = 0;
          b = 0;          // = is blocking assignment
          c = 0;
          out = 0;
        end
      else begin
        a = in;
        b = a;
        c = b;		//a and b are ignored
        out = c;
      end
    end
endmodule
