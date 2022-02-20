# Kröte FPGA Board

Kröte is a minimal ICE40HX4K FPGA development board with five Digilent Pmod™ compatible sockets.

![Krote FPGA Board](https://github.com/machdyne/krote/blob/c6a8ba8a467bc0d9354aeab5d3733213635094be/krote.png)

This repo contains schematics, pinouts and example gateware.

Find more information on the [Kröte product page](https://machdyne.com/product/krote-fpga-board/).

## Blinky 

Building the blinky example requires [Yosys](https://github.com/YosysHQ/yosys), [nextpnr-ice40](https://github.com/YosysHQ/nextpnr) and [IceStorm](https://github.com/YosysHQ/icestorm).

Assuming they are installed, you can simply type `make` to build the gateware, which will be written to output/blinky.bin. You can then use [ldprog](https://github.com/machdyne/ldprog) to write the gateware to the device.

## ISP Header

The ISP header can be used to program the FPGA SRAM as well as the MMOD flash memory. 

```
1 2
3 4
5 6
7 8
```

| Pin | Signal |
| --- | ------ |
| 1 | CSPI\_SS |
| 2 | CSPI\_SCK |
| 3 | CSPI\_SI |
| 4 | CSPI\_SO |
| 5 | CRESET |
| 6 | CDONE |
| 7 | GND |
| 8 | PWR3V3 (out) |

