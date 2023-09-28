library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;



--                       +------------+
--        READ_ADRESS_A -|  Register  |- QA
--        READ_ADRESS_B -|    File    |
--        W_ADRESS      -|            |- QB
--        DATA_IN       -|            |
--        RST           -|            |
--        CLK           -|>           |
--                       +------------+

--        READ_ADRESS_A : Registres 0 à 7
--        READ_ADRESS_B : Registres de 8 à 15

-- READ_ADRESS_A      Array Index
--         000 :      0
--         001 :      1
--         010 :      2
--         011 :      3
--         100 :      4
--         101 :      5
--         110 :      6
--         111 :      7

-- READ_ADRESS_B      Array Index
--         000 :      8
--         001 :      9
--         010 :      10
--         011 :      11
--         100 :      12
--         101 :      13
--         110 :      14
--         111 :      15



entity register_file is
    Port(
        Q_A, Q_B : out std_logic_vector(7 downto 0);
        READ_ADRESS_A, READ_ADRESS_B : in std_logic_vector(3 downto 0); -- Read Pointer
        W_ADRESS : in std_logic_vector(3 downto 0) := (others => '0'); -- Write Pointer
        W_ENABLE : in std_logic;
        DATA_IN : in std_logic_vector(7 downto 0); -- Data to write
        RST : in std_logic;
        CLK : in std_logic
        );
end register_file; -- Lecture asynchrone on sort toujours les donnees en fonction de des read addr (Combinatoire)

architecture register_file_arch of register_file is
        type REG_ARRAY is array (0 to 15) of std_logic_vector(7 downto 0);
        signal Registers : REG_ARRAY := (others => "00000000");
        signal Data_A, Data_B : std_logic_vector(7 downto 0);
begin

    if W_ENABLE = '1' AND CLK = '1' then
        
    else
    end if;


    Data_A <= Registers(to_integer(unsigned(READ_ADRESS_A)));
    Data_B <= Registers(to_integer(unsigned(READ_ADRESS_B)));
    Q_A <= Data_A;
    Q_B <= Data_B;


end register_file_arch;
