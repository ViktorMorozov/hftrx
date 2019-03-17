-- cic64_3iq_v181.vhd

-- Generated using ACDS version 18.1 625

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity cic64_3iq_v181 is
	port (
		in_error          : in  std_logic_vector(1 downto 0)  := (others => '0'); --  av_st_in.error
		in_valid          : in  std_logic                     := '0';             --          .valid
		in_ready          : out std_logic;                                        --          .ready
		in0_data          : in  std_logic_vector(31 downto 0) := (others => '0'); --          .in0_data
		in1_data          : in  std_logic_vector(31 downto 0) := (others => '0'); --          .in1_data
		in2_data          : in  std_logic_vector(31 downto 0) := (others => '0'); --          .in2_data
		in3_data          : in  std_logic_vector(31 downto 0) := (others => '0'); --          .in3_data
		in4_data          : in  std_logic_vector(31 downto 0) := (others => '0'); --          .in4_data
		in5_data          : in  std_logic_vector(31 downto 0) := (others => '0'); --          .in5_data
		out_data          : out std_logic_vector(31 downto 0);                    -- av_st_out.out_data
		out_error         : out std_logic_vector(1 downto 0);                     --          .error
		out_valid         : out std_logic;                                        --          .valid
		out_ready         : in  std_logic                     := '0';             --          .ready
		out_startofpacket : out std_logic;                                        --          .startofpacket
		out_endofpacket   : out std_logic;                                        --          .endofpacket
		out_channel       : out std_logic_vector(2 downto 0);                     --          .channel
		clk               : in  std_logic                     := '0';             --     clock.clk
		reset_n           : in  std_logic                     := '0'              --     reset.reset_n
	);
end entity cic64_3iq_v181;

architecture rtl of cic64_3iq_v181 is
	component cic64_3iq_v181_cic_ii_0 is
		port (
			clk               : in  std_logic                     := 'X';             -- clk
			reset_n           : in  std_logic                     := 'X';             -- reset_n
			in_error          : in  std_logic_vector(1 downto 0)  := (others => 'X'); -- error
			in_valid          : in  std_logic                     := 'X';             -- valid
			in_ready          : out std_logic;                                        -- ready
			in0_data          : in  std_logic_vector(31 downto 0) := (others => 'X'); -- in0_data
			in1_data          : in  std_logic_vector(31 downto 0) := (others => 'X'); -- in1_data
			in2_data          : in  std_logic_vector(31 downto 0) := (others => 'X'); -- in2_data
			in3_data          : in  std_logic_vector(31 downto 0) := (others => 'X'); -- in3_data
			in4_data          : in  std_logic_vector(31 downto 0) := (others => 'X'); -- in4_data
			in5_data          : in  std_logic_vector(31 downto 0) := (others => 'X'); -- in5_data
			out_data          : out std_logic_vector(31 downto 0);                    -- out_data
			out_error         : out std_logic_vector(1 downto 0);                     -- error
			out_valid         : out std_logic;                                        -- valid
			out_ready         : in  std_logic                     := 'X';             -- ready
			out_startofpacket : out std_logic;                                        -- startofpacket
			out_endofpacket   : out std_logic;                                        -- endofpacket
			out_channel       : out std_logic_vector(2 downto 0);                     -- channel
			clken             : in  std_logic                     := 'X'              -- clken
		);
	end component cic64_3iq_v181_cic_ii_0;

begin

	cic_ii_0 : component cic64_3iq_v181_cic_ii_0
		port map (
			clk               => clk,               --     clock.clk
			reset_n           => reset_n,           --     reset.reset_n
			in_error          => in_error,          --  av_st_in.error
			in_valid          => in_valid,          --          .valid
			in_ready          => in_ready,          --          .ready
			in0_data          => in0_data,          --          .in0_data
			in1_data          => in1_data,          --          .in1_data
			in2_data          => in2_data,          --          .in2_data
			in3_data          => in3_data,          --          .in3_data
			in4_data          => in4_data,          --          .in4_data
			in5_data          => in5_data,          --          .in5_data
			out_data          => out_data,          -- av_st_out.out_data
			out_error         => out_error,         --          .error
			out_valid         => out_valid,         --          .valid
			out_ready         => out_ready,         --          .ready
			out_startofpacket => out_startofpacket, --          .startofpacket
			out_endofpacket   => out_endofpacket,   --          .endofpacket
			out_channel       => out_channel,       --          .channel
			clken             => '1'                -- (terminated)
		);

end architecture rtl; -- of cic64_3iq_v181