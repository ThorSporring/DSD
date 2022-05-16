onerror {quit -f}
vlib work
vlog -work work my_gates.vo
vlog -work work Exercise_8.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.my_gates_vlg_vec_tst
vcd file -direction Exercise_8.msim.vcd
vcd add -internal my_gates_vlg_vec_tst/*
vcd add -internal my_gates_vlg_vec_tst/i1/*
add wave /*
run -all
