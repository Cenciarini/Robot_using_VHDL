transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {D:/Estudios/UNER/Créditos/VHDL/Integrador/Integrador.vhd}
vcom -93 -work work {D:/Estudios/UNER/Créditos/VHDL/Integrador/BaudRate.vhd}
vcom -93 -work work {D:/Estudios/UNER/Créditos/VHDL/Integrador/SerialPort.vhd}

vcom -93 -work work {D:/Estudios/UNER/Créditos/VHDL/Integrador/Integrador_TB.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneii -L rtl_work -L work -voptargs="+acc"  TB

add wave *
view structure
view signals
run -all
