;(This file is for a Reprap X2V3)
;(**** begin initilization commands ****)
G21 ;(set units to mm)
G90 ;(set positioning to absolute)
G28 ;(home all axis)
G91 ;(use relative moves)
G1 X1;(move X a bit off of the endstop)
G90 ;(back to absolute)
M331 S0 ;(save current positon)
G1 Z0.0 F300 ; ( adjust for platform going up due to heat)
G92 Z0.0 ;(set the z level of homing)
G1 Z10 F600 ;(move up a bit)
M109 ;(wait for extruder)
M190 ;(wait for bed)
G92 E0 ;(reset extruder to 0)
G1 F100 ;(set feed rate to 60mm/min)
G1 E12.5 ;(feed some plastic)
G1 E6.0 F2700 ;(retract +0.5mm extra)
G92 E0 ;(reset extruder to 0)
G4 P5000
G1 F1500