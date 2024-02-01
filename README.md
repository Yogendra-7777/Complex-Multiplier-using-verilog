# Complex-Multiplier-using-verilog
This is a FSM based digital subsystem design used to multiply two one bit complex numbers.This may be further increased into more bits also for higher computation.
Let the two complex numbers are
a=ar + j ai
b=br + j bi where r and i denotes real and imaginary part.
In this project we use only one multiplier for all multiplactions which are done.
product=(arbr-aibi)+j(arbi+aibr)
We design this by using a data path and a control unit.
The schematic of Datapath is as follows
![Datapath of the complex multiplier](https://github.com/Yogendra-7777/Complex-Multiplier-using-verilog/assets/158204977/6b4885c0-6244-49ca-8064-039495a4ae06)

The control unit of this design can be implemented by using a FSM.
The state table and their respective inputs of the FSM are given.
In the datapath of the complex multiplier we can see multiple inputs to the circuitry but the user can only give ar,ai,br,bi inputs so the remaining inputs and their changes should be made automatically in a sequenced order to get the desired product.
These changes can be done by a FSM but an additional clock input is needed from  the user.
The respective steps to get the product and its transformation in to a state table is given.
![image](https://github.com/Yogendra-7777/Complex-Multiplier-using-verilog/assets/158204977/944eca04-37d0-434b-8ba4-a55bb543c7e6)
Control sequence for the control signals of the sequential complex multiplier
1. Multiply a_r and b_r, and store the result in partial product register 1.
2. Multiply a_i and b_i, and store the result in partial product register 2.
3. Subtract the partial product register values and store the result in the product real part register.
4. Multiply a_r and b_i, and store the result in partial product register 1.
5. Multiply a_i and b_r, and store the result in partial product register 2.
6. Add the partial product register values and store the result in the product imaginary part register.


