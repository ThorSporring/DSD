-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "02/21/2022 18:00:23"

-- 
-- Device: Altera EP2C35F672C6 Package FBGA672
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	my_xor_7 IS
    PORT (
	Cout : IN std_logic;
	Cout1 : IN std_logic;
	f1 : OUT std_logic;
	A_3 : IN std_logic;
	B_3 : IN std_logic;
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END my_xor_7;

-- Design Ports Information


ARCHITECTURE structure OF my_xor_7 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Cout : std_logic;
SIGNAL ww_Cout1 : std_logic;
SIGNAL ww_f1 : std_logic;
SIGNAL ww_A_3 : std_logic;
SIGNAL ww_B_3 : std_logic;

BEGIN

ww_Cout <= Cout;
ww_Cout1 <= Cout1;
f1 <= ww_f1;
ww_A_3 <= A_3;
ww_B_3 <= B_3;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: LCCOMB_X56_Y35_N24
f : cycloneii_lcell_comb
-- Equation(s):
-- f1 = \A~combout\(3) $ (\B~combout\(3) $ (((Cout1) # (Cout2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ww_Cout,
	datab => ww_A_3,
	datac => ww_B_3,
	datad => ww_Cout1,
	combout => ww_f1);
END structure;


LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	half_adder_structural_7 IS
    PORT (
	Cout : IN std_logic;
	Cout1 : IN std_logic;
	f : OUT std_logic;
	A_3 : IN std_logic;
	B_3 : IN std_logic;
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END half_adder_structural_7;

-- Design Ports Information


ARCHITECTURE structure OF half_adder_structural_7 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Cout : std_logic;
SIGNAL ww_Cout1 : std_logic;
SIGNAL ww_f : std_logic;
SIGNAL ww_A_3 : std_logic;
SIGNAL ww_B_3 : std_logic;

COMPONENT my_xor_7
    PORT (
	Cout : IN std_logic;
	Cout1 : IN std_logic;
	f1 : OUT std_logic;
	A_3 : IN std_logic;
	B_3 : IN std_logic;
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_Cout <= Cout;
ww_Cout1 <= Cout1;
f <= ww_f;
ww_A_3 <= A_3;
ww_B_3 <= B_3;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
u1 : my_xor_7
PORT MAP (
	Cout => ww_Cout,
	Cout1 => ww_Cout1,
	f1 => ww_f,
	A_3 => ww_A_3,
	B_3 => ww_B_3,
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);
END structure;


LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	full_adder_3 IS
    PORT (
	Cout : IN std_logic;
	Cout1 : IN std_logic;
	f : OUT std_logic;
	Cout2 : OUT std_logic;
	A_3 : IN std_logic;
	B_3 : IN std_logic;
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END full_adder_3;

-- Design Ports Information


ARCHITECTURE structure OF full_adder_3 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Cout : std_logic;
SIGNAL ww_Cout1 : std_logic;
SIGNAL ww_f : std_logic;
SIGNAL ww_Cout2 : std_logic;
SIGNAL ww_A_3 : std_logic;
SIGNAL ww_B_3 : std_logic;

COMPONENT half_adder_structural_7
    PORT (
	Cout : IN std_logic;
	Cout1 : IN std_logic;
	f : OUT std_logic;
	A_3 : IN std_logic;
	B_3 : IN std_logic;
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_Cout <= Cout;
ww_Cout1 <= Cout1;
f <= ww_f;
Cout2 <= ww_Cout2;
ww_A_3 <= A_3;
ww_B_3 <= B_3;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
h2 : half_adder_structural_7
PORT MAP (
	Cout => ww_Cout,
	Cout1 => ww_Cout1,
	f => ww_f,
	A_3 => ww_A_3,
	B_3 => ww_B_3,
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X56_Y35_N2
\Cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- Cout2 = (\A~combout\(3) & ((Cout1) # ((\B~combout\(3)) # (Cout2)))) # (!\A~combout\(3) & (\B~combout\(3) & ((Cout1) # (Cout2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ww_Cout,
	datab => ww_A_3,
	datac => ww_B_3,
	datad => ww_Cout1,
	combout => ww_Cout2);
END structure;


LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	my_xor_5 IS
    PORT (
	Cout : IN std_logic;
	f1 : OUT std_logic;
	B_1 : IN std_logic;
	A_1 : IN std_logic;
	A_2 : IN std_logic;
	B_2 : IN std_logic;
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END my_xor_5;

-- Design Ports Information


ARCHITECTURE structure OF my_xor_5 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Cout : std_logic;
SIGNAL ww_f1 : std_logic;
SIGNAL ww_B_1 : std_logic;
SIGNAL ww_A_1 : std_logic;
SIGNAL ww_A_2 : std_logic;
SIGNAL ww_B_2 : std_logic;
SIGNAL \f~0_combout\ : std_logic;

BEGIN

ww_Cout <= Cout;
f1 <= ww_f1;
ww_B_1 <= B_1;
ww_A_1 <= A_1;
ww_A_2 <= A_2;
ww_B_2 <= B_2;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: LCCOMB_X56_Y35_N16
f : cycloneii_lcell_comb
-- Equation(s):
-- f1 = \f~0_combout\ $ (((Cout & ((\B~combout\(1)) # (\A~combout\(1)))) # (!Cout & (\B~combout\(1) & \A~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f~0_combout\,
	datab => ww_Cout,
	datac => ww_B_1,
	datad => ww_A_1,
	combout => ww_f1);

-- Location: LCCOMB_X56_Y35_N6
\f~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \f~0_combout\ = \B~combout\(2) $ (\A~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => ww_B_2,
	datad => ww_A_2,
	combout => \f~0_combout\);
END structure;


LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	half_adder_structural_5 IS
    PORT (
	Cout : IN std_logic;
	f : OUT std_logic;
	B_1 : IN std_logic;
	A_1 : IN std_logic;
	A_2 : IN std_logic;
	B_2 : IN std_logic;
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END half_adder_structural_5;

-- Design Ports Information


ARCHITECTURE structure OF half_adder_structural_5 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Cout : std_logic;
SIGNAL ww_f : std_logic;
SIGNAL ww_B_1 : std_logic;
SIGNAL ww_A_1 : std_logic;
SIGNAL ww_A_2 : std_logic;
SIGNAL ww_B_2 : std_logic;

COMPONENT my_xor_5
    PORT (
	Cout : IN std_logic;
	f1 : OUT std_logic;
	B_1 : IN std_logic;
	A_1 : IN std_logic;
	A_2 : IN std_logic;
	B_2 : IN std_logic;
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_Cout <= Cout;
f <= ww_f;
ww_B_1 <= B_1;
ww_A_1 <= A_1;
ww_A_2 <= A_2;
ww_B_2 <= B_2;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
u1 : my_xor_5
PORT MAP (
	Cout => ww_Cout,
	f1 => ww_f,
	B_1 => ww_B_1,
	A_1 => ww_A_1,
	A_2 => ww_A_2,
	B_2 => ww_B_2,
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);
END structure;


LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	full_adder_2 IS
    PORT (
	Cout : IN std_logic;
	f : OUT std_logic;
	Cout1 : OUT std_logic;
	Cout2 : OUT std_logic;
	B_1 : IN std_logic;
	A_1 : IN std_logic;
	A_2 : IN std_logic;
	B_2 : IN std_logic;
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END full_adder_2;

-- Design Ports Information


ARCHITECTURE structure OF full_adder_2 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Cout : std_logic;
SIGNAL ww_f : std_logic;
SIGNAL ww_Cout1 : std_logic;
SIGNAL ww_Cout2 : std_logic;
SIGNAL ww_B_1 : std_logic;
SIGNAL ww_A_1 : std_logic;
SIGNAL ww_A_2 : std_logic;
SIGNAL ww_B_2 : std_logic;
SIGNAL \Cout~1_combout\ : std_logic;

COMPONENT half_adder_structural_5
    PORT (
	Cout : IN std_logic;
	f : OUT std_logic;
	B_1 : IN std_logic;
	A_1 : IN std_logic;
	A_2 : IN std_logic;
	B_2 : IN std_logic;
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_Cout <= Cout;
f <= ww_f;
Cout1 <= ww_Cout1;
Cout2 <= ww_Cout2;
ww_B_1 <= B_1;
ww_A_1 <= A_1;
ww_A_2 <= A_2;
ww_B_2 <= B_2;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
h2 : half_adder_structural_5
PORT MAP (
	Cout => ww_Cout,
	f => ww_f,
	B_1 => ww_B_1,
	A_1 => ww_A_1,
	A_2 => ww_A_2,
	B_2 => ww_B_2,
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X56_Y35_N10
\Cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- Cout1 = (\B~combout\(2) & \A~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => ww_B_2,
	datad => ww_A_2,
	combout => ww_Cout1);

-- Location: LCCOMB_X56_Y35_N22
\Cout~2\ : cycloneii_lcell_comb
-- Equation(s):
-- Cout2 = (\Cout~1_combout\ & ((\A~combout\(1) & ((Cout) # (\B~combout\(1)))) # (!\A~combout\(1) & (Cout & \B~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ww_A_1,
	datab => ww_Cout,
	datac => ww_B_1,
	datad => \Cout~1_combout\,
	combout => ww_Cout2);

-- Location: LCCOMB_X56_Y35_N28
\Cout~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Cout~1_combout\ = (\B~combout\(2)) # (\A~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => ww_B_2,
	datad => ww_A_2,
	combout => \Cout~1_combout\);
END structure;


LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	my_xor_3 IS
    PORT (
	Cout : IN std_logic;
	f1 : OUT std_logic;
	B_1 : IN std_logic;
	A_1 : IN std_logic;
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END my_xor_3;

-- Design Ports Information


ARCHITECTURE structure OF my_xor_3 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Cout : std_logic;
SIGNAL ww_f1 : std_logic;
SIGNAL ww_B_1 : std_logic;
SIGNAL ww_A_1 : std_logic;

BEGIN

ww_Cout <= Cout;
f1 <= ww_f1;
ww_B_1 <= B_1;
ww_A_1 <= A_1;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: LCCOMB_X56_Y35_N12
f : cycloneii_lcell_comb
-- Equation(s):
-- f1 = Cout $ (\B~combout\(1) $ (\A~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => ww_Cout,
	datac => ww_B_1,
	datad => ww_A_1,
	combout => ww_f1);
END structure;


LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	half_adder_structural_3 IS
    PORT (
	Cout : IN std_logic;
	f : OUT std_logic;
	B_1 : IN std_logic;
	A_1 : IN std_logic;
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END half_adder_structural_3;

-- Design Ports Information


ARCHITECTURE structure OF half_adder_structural_3 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Cout : std_logic;
SIGNAL ww_f : std_logic;
SIGNAL ww_B_1 : std_logic;
SIGNAL ww_A_1 : std_logic;

COMPONENT my_xor_3
    PORT (
	Cout : IN std_logic;
	f1 : OUT std_logic;
	B_1 : IN std_logic;
	A_1 : IN std_logic;
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_Cout <= Cout;
f <= ww_f;
ww_B_1 <= B_1;
ww_A_1 <= A_1;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
u1 : my_xor_3
PORT MAP (
	Cout => ww_Cout,
	f1 => ww_f,
	B_1 => ww_B_1,
	A_1 => ww_A_1,
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);
END structure;


LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	full_adder_1 IS
    PORT (
	Cout : IN std_logic;
	f : OUT std_logic;
	B_1 : IN std_logic;
	A_1 : IN std_logic;
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END full_adder_1;

-- Design Ports Information


ARCHITECTURE structure OF full_adder_1 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Cout : std_logic;
SIGNAL ww_f : std_logic;
SIGNAL ww_B_1 : std_logic;
SIGNAL ww_A_1 : std_logic;

COMPONENT half_adder_structural_3
    PORT (
	Cout : IN std_logic;
	f : OUT std_logic;
	B_1 : IN std_logic;
	A_1 : IN std_logic;
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_Cout <= Cout;
f <= ww_f;
ww_B_1 <= B_1;
ww_A_1 <= A_1;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
h2 : half_adder_structural_3
PORT MAP (
	Cout => ww_Cout,
	f => ww_f,
	B_1 => ww_B_1,
	A_1 => ww_A_1,
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);
END structure;


LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	my_xor_1 IS
    PORT (
	f : OUT std_logic;
	Cin : IN std_logic;
	A_0 : IN std_logic;
	B_0 : IN std_logic;
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END my_xor_1;

-- Design Ports Information


ARCHITECTURE structure OF my_xor_1 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_f : std_logic;
SIGNAL ww_Cin : std_logic;
SIGNAL ww_A_0 : std_logic;
SIGNAL ww_B_0 : std_logic;

BEGIN

f <= ww_f;
ww_Cin <= Cin;
ww_A_0 <= A_0;
ww_B_0 <= B_0;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: LCCOMB_X56_Y35_N0
\f~0\ : cycloneii_lcell_comb
-- Equation(s):
-- f = \A~combout\(0) $ (\Cin~combout\ $ (\B~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => ww_A_0,
	datac => ww_Cin,
	datad => ww_B_0,
	combout => ww_f);
END structure;


LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	half_adder_structural_1 IS
    PORT (
	Sum : OUT std_logic;
	Cin : IN std_logic;
	A_0 : IN std_logic;
	B_0 : IN std_logic;
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END half_adder_structural_1;

-- Design Ports Information


ARCHITECTURE structure OF half_adder_structural_1 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Sum : std_logic;
SIGNAL ww_Cin : std_logic;
SIGNAL ww_A_0 : std_logic;
SIGNAL ww_B_0 : std_logic;

COMPONENT my_xor_1
    PORT (
	f : OUT std_logic;
	Cin : IN std_logic;
	A_0 : IN std_logic;
	B_0 : IN std_logic;
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

Sum <= ww_Sum;
ww_Cin <= Cin;
ww_A_0 <= A_0;
ww_B_0 <= B_0;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
u1 : my_xor_1
PORT MAP (
	f => ww_Sum,
	Cin => ww_Cin,
	A_0 => ww_A_0,
	B_0 => ww_B_0,
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);
END structure;


LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	full_adder IS
    PORT (
	Sum : OUT std_logic;
	Cout : OUT std_logic;
	Cin : IN std_logic;
	A_0 : IN std_logic;
	B_0 : IN std_logic;
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END full_adder;

-- Design Ports Information


ARCHITECTURE structure OF full_adder IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Sum : std_logic;
SIGNAL ww_Cout : std_logic;
SIGNAL ww_Cin : std_logic;
SIGNAL ww_A_0 : std_logic;
SIGNAL ww_B_0 : std_logic;

COMPONENT half_adder_structural_1
    PORT (
	Sum : OUT std_logic;
	Cin : IN std_logic;
	A_0 : IN std_logic;
	B_0 : IN std_logic;
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

Sum <= ww_Sum;
Cout <= ww_Cout;
ww_Cin <= Cin;
ww_A_0 <= A_0;
ww_B_0 <= B_0;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
h2 : half_adder_structural_1
PORT MAP (
	Sum => ww_Sum,
	Cin => ww_Cin,
	A_0 => ww_A_0,
	B_0 => ww_B_0,
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X56_Y35_N26
\Cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- Cout = (\A~combout\(0) & ((\Cin~combout\) # (\B~combout\(0)))) # (!\A~combout\(0) & (\Cin~combout\ & \B~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => ww_A_0,
	datac => ww_Cin,
	datad => ww_B_0,
	combout => ww_Cout);
END structure;


LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	four_bit_adder IS
    PORT (
	Cin : IN std_logic;
	A : IN std_logic_vector(3 DOWNTO 0);
	B : IN std_logic_vector(3 DOWNTO 0);
	Sum : OUT std_logic_vector(3 DOWNTO 0);
	Cout : OUT std_logic
	);
END four_bit_adder;

-- Design Ports Information
-- Sum[0]	=>  Location: PIN_A20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Sum[1]	=>  Location: PIN_C24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Sum[2]	=>  Location: PIN_B21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Sum[3]	=>  Location: PIN_D20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Cout	=>  Location: PIN_K16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Cin	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[0]	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[0]	=>  Location: PIN_F20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[1]	=>  Location: PIN_J16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[1]	=>  Location: PIN_A22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[2]	=>  Location: PIN_H19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[2]	=>  Location: PIN_E20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[3]	=>  Location: PIN_B20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[3]	=>  Location: PIN_D23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF four_bit_adder IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Cin : std_logic;
SIGNAL ww_A : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Sum : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Cout : std_logic;
SIGNAL \fa1|h2|u1|f~0_combout\ : std_logic;
SIGNAL \fa1|Cout~0_combout\ : std_logic;
SIGNAL \fa2|h2|u1|f~combout\ : std_logic;
SIGNAL \fa3|h2|u1|f~combout\ : std_logic;
SIGNAL \fa3|Cout~0_combout\ : std_logic;
SIGNAL \fa3|Cout~2_combout\ : std_logic;
SIGNAL \fa4|h2|u1|f~combout\ : std_logic;
SIGNAL \fa4|Cout~0_combout\ : std_logic;
SIGNAL \Cin~combout\ : std_logic;
SIGNAL \B~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \A~combout\ : std_logic_vector(3 DOWNTO 0);

COMPONENT full_adder_3
    PORT (
	Cout : IN std_logic;
	Cout1 : IN std_logic;
	f : OUT std_logic;
	Cout2 : OUT std_logic;
	A_3 : IN std_logic;
	B_3 : IN std_logic;
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

COMPONENT full_adder_2
    PORT (
	Cout : IN std_logic;
	f : OUT std_logic;
	Cout1 : OUT std_logic;
	Cout2 : OUT std_logic;
	B_1 : IN std_logic;
	A_1 : IN std_logic;
	A_2 : IN std_logic;
	B_2 : IN std_logic;
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

COMPONENT full_adder_1
    PORT (
	Cout : IN std_logic;
	f : OUT std_logic;
	B_1 : IN std_logic;
	A_1 : IN std_logic;
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

COMPONENT full_adder
    PORT (
	Sum : OUT std_logic;
	Cout : OUT std_logic;
	Cin : IN std_logic;
	A_0 : IN std_logic;
	B_0 : IN std_logic;
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_Cin <= Cin;
ww_A <= A;
ww_B <= B;
Sum <= ww_Sum;
Cout <= ww_Cout;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
fa4 : full_adder_3
PORT MAP (
	Cout => \fa3|Cout~0_combout\,
	Cout1 => \fa3|Cout~2_combout\,
	f => \fa4|h2|u1|f~combout\,
	Cout2 => \fa4|Cout~0_combout\,
	A_3 => \A~combout\(3),
	B_3 => \B~combout\(3),
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);
fa3 : full_adder_2
PORT MAP (
	Cout => \fa1|Cout~0_combout\,
	f => \fa3|h2|u1|f~combout\,
	Cout1 => \fa3|Cout~0_combout\,
	Cout2 => \fa3|Cout~2_combout\,
	B_1 => \B~combout\(1),
	A_1 => \A~combout\(1),
	A_2 => \A~combout\(2),
	B_2 => \B~combout\(2),
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);
fa2 : full_adder_1
PORT MAP (
	Cout => \fa1|Cout~0_combout\,
	f => \fa2|h2|u1|f~combout\,
	B_1 => \B~combout\(1),
	A_1 => \A~combout\(1),
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);
fa1 : full_adder
PORT MAP (
	Sum => \fa1|h2|u1|f~0_combout\,
	Cout => \fa1|Cout~0_combout\,
	Cin => \Cin~combout\,
	A_0 => \A~combout\(0),
	B_0 => \B~combout\(0),
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Cin~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_Cin,
	combout => \Cin~combout\);

-- Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A(0),
	combout => \A~combout\(0));

-- Location: PIN_F20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_B(0),
	combout => \B~combout\(0));

-- Location: PIN_J16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_B(1),
	combout => \B~combout\(1));

-- Location: PIN_A22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A(1),
	combout => \A~combout\(1));

-- Location: PIN_H19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A(2),
	combout => \A~combout\(2));

-- Location: PIN_E20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_B(2),
	combout => \B~combout\(2));

-- Location: PIN_B20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A(3),
	combout => \A~combout\(3));

-- Location: PIN_D23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_B(3),
	combout => \B~combout\(3));

-- Location: PIN_A20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Sum[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \fa1|h2|u1|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Sum(0));

-- Location: PIN_C24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Sum[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \fa2|h2|u1|f~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Sum(1));

-- Location: PIN_B21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Sum[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \fa3|h2|u1|f~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Sum(2));

-- Location: PIN_D20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Sum[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \fa4|h2|u1|f~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Sum(3));

-- Location: PIN_K16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Cout~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \fa4|Cout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Cout);
END structure;


