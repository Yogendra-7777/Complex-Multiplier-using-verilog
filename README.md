# Complex-Multiplier-using-verilog
This is a FSM based digital subsystem design used to multiply two one bit complex numbers.This may be further increased into more bits also for higher computation.
Let the two complex numbers are
a=ar + j ai
b=br + j bi where r and i denotes real and imaginary part.
In this project we use only one multiplier for all multiplactions which are done.
product=(arbr-aibi)+j(arbi+aibr)
We design this by using a data path and a control unit.
The schematic of Datapath is given in the png file.
The control unit of this design can be implemented by using a FSM.
The state table and their respective inputs of the FSM are given.
