G90; absolute positioning

;Layer height: 0.2
;LAYER_COUNT:5
;LAYER:0
G0 F3000; Fast moves
G0 Z5.0; Nozzle up to avoid smacking the bed
G0 X30 Y30; Move to 30,30
G0 Z0.4 F5000; Lower fast
G0 Z0.0 F60; Lower slowly
;LAYER:1
@pause

G0 F3000
G0 Z5.0; Nozzle up to avoid smacking the bed
G0 X30 Y200; Move to 30,200
G0 Z0.4 F5000; Lower fast
G0 Z0.0 F60; Lower slowly
;LAYER:2
@pause

G0 F3000
G0 Z5.0; Nozzle up to avoid smacking the bed
G0 X200 Y200; Move to 200,200
G0 F60; go slowly to avoid nozzle damage if bed badly adjusted.
G0 Z0.4 F5000; Lower fast
G0 Z0.0 F60; Lower slowly
;LAYER:3
@pause

G0 F3000
G0 Z5.0; Nozzle up to avoid smacking the bed
G0 X200 Y30; Move to 200,30
G0 Z0.4 F5000; Lower fast
G0 Z0.0 F60; Lower slowly
;LAYER:4
@pause

G0 F3000; Fast moves
G0 Z5.0; Nozzle up so it doesn't bang the plate
G0 X10 Y10; Move to 10,10
G28; Auto home
