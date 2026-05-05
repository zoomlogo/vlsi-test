* NMOS Characteristics curves.
* Load the library.
.lib "~/tools/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice" tt

* nfet from the sky130 library
*  d g s b  <- pin order
X1 d g 0 0 sky130_fd_pr__nfet_01v8 w=1 l=0.15
*                                  w   l   <- sets the dimensions (in microns)

* biasing sources
Vgs g 0 1.8
Vds d 0 1.8

.control
*   for every Vds from 0 to 1.8 (step 0.01)
*       vary Vgs from 0 to 1.8 (step 0.3)
    dc Vds 0 1.8 0.01 Vgs 0 1.8 0.3
* save:  Vds | i(Vds)  <- i(Vds) is current flowing through the drain
    wrdata nmos_curves.dat i(Vds)
* close program
    exit
.endc
.end
