* NMOS Characteristics curves.
.lib "~/tools/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice" tt

.param vgs=1.8
X1 d g 0 0 sky130_fd_pr__nfet_01v8 w=1 l=0.15

Vgs g 0 1.8
Vds d 0 1.8

.control
    dc Vds 0 1.8 0.01 Vgs 0 1.8 0.3
    wrdata nmos_curves.dat i(Vds)
    exit
.endc
.end
