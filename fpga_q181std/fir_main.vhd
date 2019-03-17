-- megafunction wizard: %FIR II v18.1%
-- GENERATION: XML
-- fir_main.vhd

-- Generated using ACDS version 18.1 625

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity fir_main is
	port (
		clk                : in  std_logic                     := '0';             --                     clk.clk
		reset_n            : in  std_logic                     := '0';             --                     rst.reset_n
		ast_sink_data      : in  std_logic_vector(31 downto 0) := (others => '0'); --   avalon_streaming_sink.data
		ast_sink_valid     : in  std_logic                     := '0';             --                        .valid
		ast_sink_error     : in  std_logic_vector(1 downto 0)  := (others => '0'); --                        .error
		ast_sink_sop       : in  std_logic                     := '0';             --                        .startofpacket
		ast_sink_eop       : in  std_logic                     := '0';             --                        .endofpacket
		ast_source_data    : out std_logic_vector(31 downto 0);                    -- avalon_streaming_source.data
		ast_source_valid   : out std_logic;                                        --                        .valid
		ast_source_error   : out std_logic_vector(1 downto 0);                     --                        .error
		ast_source_sop     : out std_logic;                                        --                        .startofpacket
		ast_source_eop     : out std_logic;                                        --                        .endofpacket
		ast_source_channel : out std_logic_vector(0 downto 0)                      --                        .channel
	);
end entity fir_main;

architecture rtl of fir_main is
	component fir_main_0002 is
		port (
			clk                : in  std_logic                     := 'X';             -- clk
			reset_n            : in  std_logic                     := 'X';             -- reset_n
			ast_sink_data      : in  std_logic_vector(31 downto 0) := (others => 'X'); -- data
			ast_sink_valid     : in  std_logic                     := 'X';             -- valid
			ast_sink_error     : in  std_logic_vector(1 downto 0)  := (others => 'X'); -- error
			ast_sink_sop       : in  std_logic                     := 'X';             -- startofpacket
			ast_sink_eop       : in  std_logic                     := 'X';             -- endofpacket
			ast_source_data    : out std_logic_vector(31 downto 0);                    -- data
			ast_source_valid   : out std_logic;                                        -- valid
			ast_source_error   : out std_logic_vector(1 downto 0);                     -- error
			ast_source_sop     : out std_logic;                                        -- startofpacket
			ast_source_eop     : out std_logic;                                        -- endofpacket
			ast_source_channel : out std_logic_vector(0 downto 0)                      -- channel
		);
	end component fir_main_0002;

begin

	fir_main_inst : component fir_main_0002
		port map (
			clk                => clk,                --                     clk.clk
			reset_n            => reset_n,            --                     rst.reset_n
			ast_sink_data      => ast_sink_data,      --   avalon_streaming_sink.data
			ast_sink_valid     => ast_sink_valid,     --                        .valid
			ast_sink_error     => ast_sink_error,     --                        .error
			ast_sink_sop       => ast_sink_sop,       --                        .startofpacket
			ast_sink_eop       => ast_sink_eop,       --                        .endofpacket
			ast_source_data    => ast_source_data,    -- avalon_streaming_source.data
			ast_source_valid   => ast_source_valid,   --                        .valid
			ast_source_error   => ast_source_error,   --                        .error
			ast_source_sop     => ast_source_sop,     --                        .startofpacket
			ast_source_eop     => ast_source_eop,     --                        .endofpacket
			ast_source_channel => ast_source_channel  --                        .channel
		);

end architecture rtl; -- of fir_main
-- Retrieval info: <?xml version="1.0"?>
--<!--
--	Generated by Altera MegaWizard Launcher Utility version 1.0
--	************************************************************
--	THIS IS A WIZARD-GENERATED FILE. DO NOT EDIT THIS FILE!
--	************************************************************
--	Copyright (C) 1991-2019 Altera Corporation
--	Any megafunction design, and related net list (encrypted or decrypted),
--	support information, device programming or simulation file, and any other
--	associated documentation or information provided by Altera or a partner
--	under Altera's Megafunction Partnership Program may be used only to
--	program PLD devices (but not masked PLD devices) from Altera.  Any other
--	use of such megafunction design, net list, support information, device
--	programming or simulation file, or any other related documentation or
--	information is prohibited for any other purpose, including, but not
--	limited to modification, reverse engineering, de-compiling, or use with
--	any other silicon devices, unless such use is explicitly licensed under
--	a separate agreement with Altera or a megafunction partner.  Title to
--	the intellectual property, including patents, copyrights, trademarks,
--	trade secrets, or maskworks, embodied in any such megafunction design,
--	net list, support information, device programming or simulation file, or
--	any other related documentation or information provided by Altera or a
--	megafunction partner, remains with Altera, the megafunction partner, or
--	their respective licensors.  No other licenses, including any licenses
--	needed under any third party's intellectual property, are provided herein.
---->
-- Retrieval info: <instance entity-name="altera_fir_compiler_ii" version="18.1" >
-- Retrieval info: 	<generic name="filterType" value="single" />
-- Retrieval info: 	<generic name="interpFactor" value="1" />
-- Retrieval info: 	<generic name="decimFactor" value="1" />
-- Retrieval info: 	<generic name="symmetryMode" value="sym" />
-- Retrieval info: 	<generic name="L_bandsFilter" value="1" />
-- Retrieval info: 	<generic name="inputChannelNum" value="2" />
-- Retrieval info: 	<generic name="clockRate" value="122.88" />
-- Retrieval info: 	<generic name="clockSlack" value="1280" />
-- Retrieval info: 	<generic name="inputRate" value="0.048" />
-- Retrieval info: 	<generic name="coeffReload" value="false" />
-- Retrieval info: 	<generic name="baseAddress" value="0" />
-- Retrieval info: 	<generic name="readWriteMode" value="read_write" />
-- Retrieval info: 	<generic name="backPressure" value="false" />
-- Retrieval info: 	<generic name="deviceFamily" value="Cyclone IV E" />
-- Retrieval info: 	<generic name="speedGrade" value="medium" />
-- Retrieval info: 	<generic name="delayRAMBlockThreshold" value="20" />
-- Retrieval info: 	<generic name="dualMemDistRAMThreshold" value="1280" />
-- Retrieval info: 	<generic name="mRAMThreshold" value="1000000" />
-- Retrieval info: 	<generic name="hardMultiplierThreshold" value="-1" />
-- Retrieval info: 	<generic name="reconfigurable" value="false" />
-- Retrieval info: 	<generic name="num_modes" value="2" />
-- Retrieval info: 	<generic name="reconfigurable_list" value="0" />
-- Retrieval info: 	<generic name="MODE_STRING" value="None Set" />
-- Retrieval info: 	<generic name="channelModes" value="0,1,2,3" />
-- Retrieval info: 	<generic name="inputType" value="int" />
-- Retrieval info: 	<generic name="inputBitWidth" value="32" />
-- Retrieval info: 	<generic name="inputFracBitWidth" value="0" />
-- Retrieval info: 	<generic name="coeffSetRealValue" value="0.0176663,0.013227,0.0,-0.0149911,-0.0227152,-0.0172976,0.0,0.0204448,0.0318046,0.0249882,0.0,-0.0321283,-0.0530093,-0.04498,0.0,0.0749693,0.159034,0.224907,0.249809,0.224907,0.159034,0.0749693,0.0,-0.04498,-0.0530093,-0.0321283,0.0,0.0249882,0.0318046,0.0204448,0.0,-0.0172976,-0.0227152,-0.0149911,0.0,0.013227,0.0176663" />
-- Retrieval info: 	<generic name="coeffSetRealValueImag" value="0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, -0.0530093, -0.04498, 0.0, 0.0749693, 0.159034, 0.224907, 0.249809, 0.224907, 0.159034, 0.0749693, 0.0, -0.04498, -0.0530093, -0.0321283, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0" />
-- Retrieval info: 	<generic name="coeffScaling" value="auto" />
-- Retrieval info: 	<generic name="coeffType" value="int" />
-- Retrieval info: 	<generic name="coeffBitWidth" value="24" />
-- Retrieval info: 	<generic name="coeffFracBitWidth" value="0" />
-- Retrieval info: 	<generic name="coeffComplex" value="false" />
-- Retrieval info: 	<generic name="karatsuba" value="false" />
-- Retrieval info: 	<generic name="outType" value="int" />
-- Retrieval info: 	<generic name="outMSBRound" value="trunc" />
-- Retrieval info: 	<generic name="outMsbBitRem" value="7" />
-- Retrieval info: 	<generic name="outLSBRound" value="trunc" />
-- Retrieval info: 	<generic name="outLsbBitRem" value="23" />
-- Retrieval info: 	<generic name="bankCount" value="1" />
-- Retrieval info: 	<generic name="bankDisplay" value="0" />
-- Retrieval info: </instance>
-- IPFS_FILES : NONE
