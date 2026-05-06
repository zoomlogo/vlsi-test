#!/usr/bin/env sh
for netlist in *.spice; do
    ngspice -b $netlist
done
