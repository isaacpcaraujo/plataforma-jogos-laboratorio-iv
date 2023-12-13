transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/intelFPGA_lite/18.1/cpu {C:/intelFPGA_lite/18.1/cpu/write_back.v}
vlog -vlog01compat -work work +incdir+C:/intelFPGA_lite/18.1/cpu {C:/intelFPGA_lite/18.1/cpu/ula.v}
vlog -vlog01compat -work work +incdir+C:/intelFPGA_lite/18.1/cpu {C:/intelFPGA_lite/18.1/cpu/store.v}
vlog -vlog01compat -work work +incdir+C:/intelFPGA_lite/18.1/cpu {C:/intelFPGA_lite/18.1/cpu/stack.v}
vlog -vlog01compat -work work +incdir+C:/intelFPGA_lite/18.1/cpu {C:/intelFPGA_lite/18.1/cpu/registers.v}
vlog -vlog01compat -work work +incdir+C:/intelFPGA_lite/18.1/cpu {C:/intelFPGA_lite/18.1/cpu/pc.v}
vlog -vlog01compat -work work +incdir+C:/intelFPGA_lite/18.1/cpu {C:/intelFPGA_lite/18.1/cpu/muxula.v}
vlog -vlog01compat -work work +incdir+C:/intelFPGA_lite/18.1/cpu {C:/intelFPGA_lite/18.1/cpu/muxbank.v}
vlog -vlog01compat -work work +incdir+C:/intelFPGA_lite/18.1/cpu {C:/intelFPGA_lite/18.1/cpu/memory_access_mux.v}
vlog -vlog01compat -work work +incdir+C:/intelFPGA_lite/18.1/cpu {C:/intelFPGA_lite/18.1/cpu/fetch.v}
vlog -vlog01compat -work work +incdir+C:/intelFPGA_lite/18.1/cpu {C:/intelFPGA_lite/18.1/cpu/extensor.v}
vlog -vlog01compat -work work +incdir+C:/intelFPGA_lite/18.1/cpu {C:/intelFPGA_lite/18.1/cpu/execute.v}
vlog -vlog01compat -work work +incdir+C:/intelFPGA_lite/18.1/cpu {C:/intelFPGA_lite/18.1/cpu/branch_controller.v}
vlog -vlog01compat -work work +incdir+C:/intelFPGA_lite/18.1/cpu {C:/intelFPGA_lite/18.1/cpu/decode.v}

vlog -vlog01compat -work work +incdir+C:/intelFPGA_lite/18.1/cpu {C:/intelFPGA_lite/18.1/cpu/cpu_test.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneive_ver -L rtl_work -L work -voptargs="+acc"  cpu_test

add wave *
view structure
view signals
run -all