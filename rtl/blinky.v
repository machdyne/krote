module blinky #()
(
	input CLK_100,

	output LED1, LED2, LED3, LED4,

	inout PMOD_A1, PMOD_A2, PMOD_A3, PMOD_A4,
		PMOD_A7, PMOD_A8, PMOD_A9, PMOD_A10,

	inout PMOD_B1, PMOD_B2, PMOD_B3, PMOD_B4,
		PMOD_B7, PMOD_B8, PMOD_B9, PMOD_B10,

	inout PMOD_C1, PMOD_C2, PMOD_C3, PMOD_C4,
		PMOD_C7, PMOD_C8, PMOD_C9, PMOD_C10,

	inout PMOD_D1, PMOD_D2, PMOD_D3, PMOD_D4,
		PMOD_D7, PMOD_D8, PMOD_D9, PMOD_D10,

	inout PMOD_E1, PMOD_E2, PMOD_E3, PMOD_E4,
		PMOD_E7, PMOD_E8, PMOD_E9, PMOD_E10,

	inout SPI_SS_FLASH, SPI_SCK, SPI_MISO, SPI_MOSI

);

	wire clk = CLK_100;

	reg [26:0] counter = 0;

	assign LED1 = ~counter[26];
	assign LED2 = ~counter[25];
	assign LED3 = ~counter[24];
	assign LED4 = ~counter[23];

	always @(posedge clk) begin

		counter <= counter + 1;

	end

endmodule
