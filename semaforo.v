module semaforo (
    input clk,
    output reg r,g,y
);


reg[1:0] estado;

always(posedge clk) begin
    case (estado)
        2'b00: begin
            r = 1;
            g = 0;
            y = 0;
            estado = 2'b01;
        end
        2'b01: begin
            r = 1;
            g = 0;
            y = 1;
            estado = 2'b10;
        end
        2'b10: begin
            r = 0;
            g = 1;
            y = 0;
            estado = 2'b11;
        end
        2'b11: begin
            r = 0;
            g = 0;
            y = 1;
            estado = 2'b00;
        end
        default: begin
            r = 0;
            g = 0;
            y = 0;
            estado = 2'b00;
        end 
end
    
endmodule