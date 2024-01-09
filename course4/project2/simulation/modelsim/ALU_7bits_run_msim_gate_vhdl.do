transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vcom -93 -work work {ALU_7bits.vho}

vcom -93 -work work {D:/microprocessor/course4/project2/ALU_7bits.vhd}

vsim -t 1ps +transport_int_delays +transport_path_delays -sdftyp /NA=ALU_7bits_vhd.sdo -L altera -L cycloneive -L gate_work -L work -voptargs="+acc"  ALU_7bits

add wave *
view structure
view signals
run -all
