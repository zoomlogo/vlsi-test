v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -70 -40 -70 -20 {lab=#net1}
N -70 -40 -50 -40 {lab=#net1}
N -50 -40 -20 -40 {lab=#net1}
N -20 -40 -20 10 {lab=#net1}
N -30 10 -20 10 {lab=#net1}
N -20 10 40 10 {lab=#net1}
N -70 40 -70 50 {lab=0}
N 80 40 80 50 {lab=0}
N -70 -72.5 -70 -40 {lab=#net1}
N -70 -145 -70 -132.5 {lab=0}
N 80 -75 80 -20 {lab=#net2}
N 80 -147.5 80 -135 {lab=0}
C {sky130_fd_pr/nfet3_01v8.sym} -50 10 0 1 {name=M1
W=1
L=0.15
body=GND
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
C {sky130_fd_pr/nfet3_01v8.sym} 60 10 0 0 {name=M2
W=1
L=0.15
body=GND
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
C {isource.sym} -70 -102.5 0 0 {name=I0 value=1m}
C {gnd.sym} -70 50 0 0 {name=l1 lab=0}
C {gnd.sym} 80 50 0 0 {name=l2 lab=0}
C {gnd.sym} -70 -145 2 0 {name=l3 lab=0}
C {vsource.sym} 80 -105 2 0 {name=V1 value=1.8 savecurrent=false}
C {gnd.sym} 80 -147.5 2 0 {name=l4 lab=0}
C {code_shown.sym} -260 -317.5 0 0 {name=s1 only_toplevel=false value=".lib \\"~/tools/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice\\" tt
.control
    dc V1 0 1.8 0.01
    wrdata mirror-curves.dat i(V1)
    exit
.endc"}
