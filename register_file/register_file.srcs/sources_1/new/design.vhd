library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;



--                       +------------+
--        READ_ADRESS_A -|  Register  |- QA
--        READ_ADRESS_B -|    File    |
--        W_ADRESS      -|            |- QB
--        DATA_IN       -|            |
--        RST           -|            |
--        CLK           -|>           |
--                       +------------+


ENTITY register_file IS
	PORT (
		Q_A, Q_B : OUT std_logic_vector(7 DOWNTO 0);
		READ_ADRESS_A, READ_ADRESS_B : IN std_logic_vector(3 DOWNTO 0); -- Read Pointer
		W_ADRESS : IN std_logic_vector(3 DOWNTO 0) := (OTHERS => '0'); -- Write Pointer
		W_ENABLE : IN std_logic;
		DATA_IN : IN std_logic_vector(7 DOWNTO 0); -- Data to write
		RST : IN std_logic;
		CLK : IN std_logic
		);
	END register_file; -- Lecture asynchrone on sort toujours les donnees en fonction de des read addr (Combinatoire)

	ARCHITECTURE register_file_arch OF register_file IS
		TYPE REG_ARRAY IS ARRAY (0 TO 15) OF std_logic_vector(7 DOWNTO 0);
		SIGNAL Registers : REG_ARRAY := (OTHERS => "00000000");
	BEGIN
		Q_A <= Registers(CONV_INTEGER(unsigned(READ_ADRESS_A))) WHEN (W_Enable = '0' OR READ_ADRESS_A /= W_ADRESS)
		       ELSE
		       DATA_IN;
 
		Q_B <= Registers(CONV_INTEGER(unsigned(READ_ADRESS_B))) WHEN (W_Enable = '0' OR READ_ADRESS_B /= W_ADRESS)
		       ELSE DATA_IN;

		-- Write data synchronously
		PROCESS (W_ADRESS, W_ENABLE, DATA_IN, RST, CLK) IS
		BEGIN
			IF RST = '0' THEN
				Registers <= (OTHERS => "00000000");
			END IF;
			IF RST = '1' THEN
				IF CLK'EVENT AND CLK = '1' THEN
					IF W_Enable = '1' THEN
						Registers(CONV_INTEGER(unsigned(W_ADRESS))) <= DATA_IN;
					END IF;
				END IF;
			END IF;
		END PROCESS;
END register_file_arch;
