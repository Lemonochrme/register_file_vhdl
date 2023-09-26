----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 26.09.2023 12:25:50
-- Design Name: 
-- Module Name: design - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity design is
    Port(
        A_SELECT, B_SELECT : in std_logic_vector(3 downto 0); -- Read - Pointer
        W_SELECT : in std_logic_vector(3 downto 0); -- Write - Pointer
        W : in std_logic;
        DATA : in std_logic_vector(7 downto 0);
        RST : in std_logic;
        CLK : in std_logic
    );
end design;

architecture Behavioral of design is

begin


end Behavioral;
