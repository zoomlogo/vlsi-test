import matplotlib.pyplot as plt
import numpy as np

data = np.loadtxt('nmos_curves.dat')
Vds = data[:, 0]
Id = data[:, 1]

plt.plot(Vds, Id)
plt.xlabel('Vds (V)')
plt.ylabel('Id (A)')
plt.title('NMOS Id vs Vds')
plt.grid(True)
plt.show()
