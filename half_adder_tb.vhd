
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity half_adder_tb is
end half_adder_tb;

architecture Behavioral of half_adder_tb is

component half_adder is
Port ( A, B : in std_logic;
       Z : out std_logic;
       C : out std_logic );
end component;


    -- Inputs
    signal A : std_logic := '0';
    signal B : std_logic := '0';
    
    -- Outputs
    signal Z : std_logic := '0';
    signal C : std_logic := '0';

begin

    uut : half_adder PORT MAP (
        A => A,
        B => B,
        Z => Z,
        C => C
    );
    
  
   stim_proc: process
   begin
        -- 0 + 0 = 0 		
        A <= '0';
		B <= '0';
      wait for 5 ns;	
     
        -- 0 + 1 = 1
		A <= '0';
		B <= '1';
	  wait for 5 ns;	
	  
	    -- 1 + 0 = 1
	    A <= '1';
	    B <= '0';
	  wait for 5 ns;
	  
	    -- 1 + 1 = 0 Carry 1
	    A <= '1';
	    B <= '1';
	  wait for 5 ns;
	  wait;
	  
   end process;


end;
