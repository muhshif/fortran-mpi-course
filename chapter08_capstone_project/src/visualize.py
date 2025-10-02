import numpy as np
import matplotlib.pyplot as plt

data = np.loadtxt('../output/final_state.txt')
plt.imshow(data, cmap='hot', interpolation='nearest')
plt.colorbar(label='Temperature')
plt.title('Final Heatmap')
plt.savefig('heatmap.png')
plt.show()
