transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+D:/FPGA/AS1/LAB7/RTL {D:/FPGA/AS1/LAB7/RTL/LAB7.v}

vlog -vlog01compat -work work +incdir+D:/FPGA/AS1/LAB7/SIM {D:/FPGA/AS1/LAB7/SIM/tb_LAB7.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneive_ver -L rtl_work -L work -voptargs="+acc"  tb_LAB7

add wave *
view structure
view signals
run 1 us
