library verilog;
use verilog.vl_types.all;
entity g07_RANDU_vlg_sample_tst is
    port(
        seed            : in     vl_logic_vector(31 downto 0);
        sampler_tx      : out    vl_logic
    );
end g07_RANDU_vlg_sample_tst;
