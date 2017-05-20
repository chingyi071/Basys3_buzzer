# Basys3_buzzer
Use verilog to control buzzer

- Introduction
  - Use a frequency divider and counter to generate sound and time step, respectively. Sound is given in module input, and this module input is the output of multiplexer. And time step determine the note by this multiplexer. To apply your own song, you can edit this multiplexer and create your tone schedule.
  
- Connection
  - In this project, we make BASYS3 control buzzer, using pin JC4 and a buzzer.
  - ![picture](https://github.com/chingyi071/Basys3_buzzer/blob/master/schematic.png)
  - To use those pin, you have to add the following into your .xdc
  ```
  set_property PACKAGE_PIN P18 [get_ports sound]
  set_property IOSTANDARD LVCMOS33 [get_ports sound]
  ```
  - ![picture](https://github.com/chingyi071/Basys3_buzzer/blob/master/picture.jpg)
  

  
