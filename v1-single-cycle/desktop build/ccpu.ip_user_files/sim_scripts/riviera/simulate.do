transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

asim +access +r +m+top_wrapper_tb  -L xil_defaultlib -L secureip -O5 xil_defaultlib.top_wrapper_tb

do {top_wrapper_tb.udo}

run 1000ns

endsim

quit -force
