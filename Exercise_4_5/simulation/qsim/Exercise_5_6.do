onerror {quit -f}
vlib work
vlog -work work Exercise_5_6.vo
vlog -work work Exercise_5_6.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.multi_counter_vlg_vec_tst
vcd file -direction Exercise_5_6.msim.vcd
vcd add -internal multi_counter_vlg_vec_tst/*
vcd add -internal multi_counter_vlg_vec_tst/i1/*
add wave /*
run -all
