#!/usr/bin/env python
import matplotlib.pyplot as plt
import numpy as np

nfet_data = np.loadtxt('nmos-curves.dat')
pfet_data = np.loadtxt('pmos-curves.dat')

plt.figure(figsize=(10, 8))

n_Vds = nfet_data[:, 0]
n_Id = nfet_data[:, 1]
p_Vds = pfet_data[:, 0]
p_Id = pfet_data[:, 1]

plt.plot(n_Vds, n_Id, color='blue', label='NMOS', alpha=0.7)
plt.plot(p_Vds, p_Id, color='red', label='PMOS', alpha=0.7)

plt.xlabel('Vds (V)')
plt.ylabel('Id (A)')
plt.title('NMOS vs PMOS (Id vs Vds)')
plt.grid(True)
plt.show()
