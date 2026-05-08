v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 20 80 20 120 {lab=output}
N -30 50 -20 50 {lab=#net1}
N -30 150 -20 150 {lab=#net1}
N 20 -0 20 20 {lab=VDD}
N 20 180 20 200 {lab=0}
N -100 90 -100 100 {lab=#net1}
N -50 50 -30 50 {lab=#net1}
N -50 50 -50 150 {lab=#net1}
N -50 150 -30 150 {lab=#net1}
N -100 90 -50 90 {lab=#net1}
N 20 50 30 50 {lab=VDD}
N 30 20 30 50 {lab=VDD}
N 20 20 30 20 {lab=VDD}
N 20 180 30 180 {lab=0}
N 20 150 30 150 {lab=0}
N 30 150 30 180 {lab=0}
C {sky130_fd_pr/nfet_01v8.sym} 0 150 0 0 {name=M1
W=1
L=0.15
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 0 50 0 0 {name=M2
W=3.512
L=0.15
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {vsource.sym} -100 130 0 0 {name=V1 value=0 savecurrent=false}
C {vsource.sym} -170 130 0 0 {name=VDD value=1.8 savecurrent=false}
C {vdd.sym} -170 100 0 0 {name=l1 lab=VDD}
C {gnd.sym} -170 160 0 0 {name=l2 lab=0}
C {gnd.sym} -100 160 0 0 {name=l3 lab=0}
C {gnd.sym} 20 200 0 0 {name=l4 lab=0}
C {vdd.sym} 20 0 0 0 {name=l5 lab=VDD}
C {code_shown.sym} -350 -167.5 0 0 {name=s1 only_toplevel=false value=".lib \\"~/tools/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice\\" tt
.control
    dc V1 0 1.8 0.01
    wrdata inverter-curves.dat v(output)
    exit
.endc"}
C {lab_wire.sym} 20 100 0 0 {name=p1 sig_type=std_logic lab=output}
