#!/usr/bin/env python
import sys
import matplotlib.pyplot as plt
import numpy as np

if len(sys.argv) < 2:
    print("usage: ./view.py [.dat]", file=sys.stderr)
    exit(1)

data = np.loadtxt(sys.argv[1])

x = data[:, 0]
y = data[:, 1]

plt.plot(x, y)
plt.grid(True)
plt.show()
