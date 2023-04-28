# Instructions

## Get
 - 1 x Loadcell 1kg NA27 (or TAL220). e.g. https://www.mavin.cn/kitchen-scale-load-cell-low-capacity-weight-sensor-na27_p28.html
 - 2 x Loadcell 100g TAL221
 - 3 x 4x2.54mm connector to solder/fasten load cell wires to
 - 4 x M3x10 alt. M3x12 machine screws similar to screws in picture TAL221_to_TAL220_adapter_mounting_4xM3x12mm.jpg

## Replace load cells
 - 3D print 2 x "thrust-stand-loadcell-adapter.stl" with high quality settings and at least 40% infill.
 - Remove the stock load cells
 - Screw the TAL221 load cells to the adapter as in TAL221_to_TAL220_adapter_mounting_4xM3x12mm.jpg. Screws will "thread" the plastic.
 - Mount it back according to TAL21_mounted*.jpg pictures. The load cell wires should comming out inwards/backwards as the stock load cells.

## Calibrate
 - Open RCBenchmark software and connect to 15xx. You will need to activate Debug mode (in the Setup tab), and then enter the following hack code in the debug menu: 
kGL7Lj  //Calibration always passes (for using custom load cells) for Series 15xx
Please note that using this unlock code and replacing the load cell will void the warranty of the product.
Also, when testing with smaller-size propellers (<8"), please make sure to use puller mode as drag from the structure may significantly impact the thrust values.


