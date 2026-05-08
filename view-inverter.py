#!/usr/bin/env python
import sys
import matplotlib.pyplot as plt
import numpy as np

data = np.loadtxt("inverter-curves.dat")

x = data[:, 0]
y = data[:, 1]

# print centre (hardcoded)
print(x[90], y[90])

plt.plot(x, y)
plt.grid(True)
plt.show()
