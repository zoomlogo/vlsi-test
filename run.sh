#!/usr/bin/env sh
for schem in labs/*.sch; do
    echo "=> converting $schem"
    xschem -n -q "$schem" -o netlists
done

for netlist in netlists/*.spice; do
    echo "=> simulating $netlist"
    ngspice -b "$netlist"
done
