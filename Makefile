all: mirror-curves.dat nmos-curves.dat pmos-curves.dat

# SPICE simulations.
mirror-curves.dat: netlists/current-mirror.spice
	ngspice -b $<

nmos-curves.dat: netlists/nmos-sweep.spice
	ngspice -b $<

pmos-curves.dat: netlists/pmos-sweep.spice
	ngspice -b $<

# Netlist generations.
netlists/current-mirror.spice: labs/current-mirror.sch
	xschem -n -q $< -o netlists


.PHONY: all
