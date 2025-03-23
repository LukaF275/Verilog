module decod (
    input a,b,c,d,

    output reg da,db,dc,dd,de,df,dg
);

reg[3:0] bin;

always @(*) begin
    bin = {a,b,c,d};
    case (bin)
            4'd0: {da, db, dc, dd, de, df, dg} = 7'b1111110;
            4'd1: {da, db, dc, dd, de, df, dg} = 7'b0110000;
            4'd2: {da, db, dc, dd, de, df, dg} = 7'b1101101;
            4'd3: {da, db, dc, dd, de, df, dg} = 7'b1111001;
            4'd4: {da, db, dc, dd, de, df, dg} = 7'b0110011;
            4'd5: {da, db, dc, dd, de, df, dg} = 7'b1011011;
            4'd6: {da, db, dc, dd, de, df, dg} = 7'b1011111;
            4'd7: {da, db, dc, dd, de, df, dg} = 7'b1110000;
            4'd8: {da, db, dc, dd, de, df, dg} = 7'b1111111;
            4'd9: {da, db, dc, dd, de, df, dg} = 7'b1111011;
            default: {da, db, dc, dd, de, df, dg} = 7'b0000000;
    endcase
end
    
endmodule