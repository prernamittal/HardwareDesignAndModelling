# VerilogCodes
The above verilog codes are writen with gedit on Ubuntu using the following commands in terminal:

<h3>Open gedit</h3>
<pre>gedit module.v</pre>

<h3>Compilation</h3>
1. For separate module and testbench files
<pre>iverilog -o testbench_tb.vvp testbench_tb.v</pre>
2. For a single file
<pre>iverilog -Wall module.v
unbuffer vvp a.out</pre>

<h3>Generate Waveform</h3>
.vvp can be generated in Ubuntu using the following command:
<pre>vvp testbench_tb.vvp</pre>

<h3>Open GTKWave</h3>
<pre>gtkwave dumpfile.vcd</pre>
Alternatively, GTKWave can be opened by simply clicking on the dumpfile.vcd file created in your workspace folder after the previous command.


