LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY register_file_tb IS
END register_file_tb;

ARCHITECTURE tb_arch OF register_file_tb IS
    SIGNAL Q_A, Q_B: std_logic_vector(7 DOWNTO 0);
    SIGNAL READ_ADRESS_A, READ_ADRESS_B, W_ADRESS: std_logic_vector(3 DOWNTO 0);
    SIGNAL W_ENABLE, RST, CLK: std_logic;
    SIGNAL DATA_IN: std_logic_vector(7 DOWNTO 0) := (OTHERS => '0');

    COMPONENT register_file
        PORT (
            Q_A, Q_B : OUT std_logic_vector(7 DOWNTO 0);
            READ_ADRESS_A, READ_ADRESS_B : IN std_logic_vector(3 DOWNTO 0);
            W_ADRESS : IN std_logic_vector(3 DOWNTO 0) := (OTHERS => '0');
            W_ENABLE : IN std_logic;
            DATA_IN : IN std_logic_vector(7 DOWNTO 0);
            RST : IN std_logic;
            CLK : IN std_logic
        );
    END COMPONENT;

BEGIN
    UUT: register_file
        PORT MAP (
            Q_A => Q_A,
            Q_B => Q_B,
            READ_ADRESS_A => READ_ADRESS_A,
            READ_ADRESS_B => READ_ADRESS_B,
            W_ADRESS => W_ADRESS,
            W_ENABLE => W_ENABLE,
            DATA_IN => DATA_IN,
            RST => RST,
            CLK => CLK
        );

    PROCESS
    BEGIN
        -- Initialize signals
        READ_ADRESS_A <= "0000";
        READ_ADRESS_B <= "0001";
        W_ADRESS <= "0000";
        W_ENABLE <= '0';
        DATA_IN <= "00000000";
        RST <= '0';
        CLK <= '0';
        WAIT FOR 10 ns; 

        
        W_ENABLE <= '1';
        DATA_IN <= "01010101";
        W_ADRESS <= "0000";
        WAIT FOR 40 ns;
        W_ENABLE <= '0';
                
        W_ENABLE <= '1';
        DATA_IN <= "11111111";
        W_ADRESS <= "0001";
        WAIT FOR 40 ns;
        W_ENABLE <= '0';
        
        RST <= '0';

        -- Clock Oscillation
        LOOP
            WAIT FOR 5 ns;  -- Half period
            CLK <= NOT CLK; -- Toggle the clock
        END LOOP;

        WAIT;
    END PROCESS;
END tb_arch;
