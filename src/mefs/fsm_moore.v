/*
Detector de sequencia
Autor: Camila Boa Morte
Descricao: Este modulo descreve detector de sequencia que recebe como input w e gera como saída z.
A saida z e alta se e somente se a sequencia 11 for detectada na entrada.

XXXI SIECOMP - Oficina Introducao ao Verilog Comportamental
*/

module fsm_moore(clk, w, z);
	/* Declaracao de portas*/
	input w, clk;
	output z;
	
	/* Declaracao de tipos e parametros*/
	localparam A = 2'b00, B = 2'b01,C = 2'b10;
	reg [1:0] state, next_state;

	/* Funcionamento do circuito*/
	
	//fli flops
	always @ (posedge clk) begin
		state <= next_state;
	end
	
	//circuito combinacional para geracao do proximo estado
	always @ (*) begin
		case(state)
			A: begin
				if(w == 1) next_state = B;
				else if(w==0) next_state = A;
			end
			B: begin
				if(w == 1) next_state = C;
				else if(w==0) next_state = A;
			end
			C: begin
				if(w == 1) next_state = C;
				else if(w==0) next_state = A;
			end
			default: next_state = A;
		endcase
	end

	//circuito combinacional para geracao da saida
	assign z = (state == C) ? 1 : 0;


endmodule
