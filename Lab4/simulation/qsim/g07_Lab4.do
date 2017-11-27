onerror {quit -f}
vlib work
vlog -work work g07_Lab4.vo
vlog -work work g07_Lab4.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.g07_testing_vlg_vec_tst
vcd file -direction g07_Lab4.msim.vcd
vcd add -internal g07_testing_vlg_vec_tst/*
vcd add -internal g07_testing_vlg_vec_tst/i1/*
add wave /*
run -all
