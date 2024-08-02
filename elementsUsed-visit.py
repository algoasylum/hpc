import numpy as np
import matplotlib.pyplot as plt
from matplotlib.animation import FuncAnimation, PillowWriter
from matplotlib.patches import Rectangle

def create_matrix_plot(ax, title, highlight_pos=None, visited=0, used=0):
    ax.clear()
    ax.set_facecolor('#F0F0F0')
    ax.axis('off')
    ax.set_title(title, fontsize=12, fontweight='bold', color='black', y=1.05, wrap=True)
    rows, cols = 5, 5
    
    # Draw square brackets
    bracket_width = 0.1
    line_width = 2
    ax.plot([0, 0, bracket_width], [0, rows, rows], color='black', linewidth=line_width)
    ax.plot([cols, cols, cols-bracket_width], [0, rows, rows], color='black', linewidth=line_width)
    ax.plot([0, bracket_width], [0, 0], color='black', linewidth=line_width)
    ax.plot([cols-bracket_width, cols], [0, 0], color='black', linewidth=line_width)
    ax.plot([0, bracket_width], [rows, rows], color='black', linewidth=line_width)
    ax.plot([cols-bracket_width, cols], [rows, rows], color='black', linewidth=line_width)
    
    ax.set_xlim(-0.5, cols + 0.5)
    ax.set_ylim(-0.5, rows + 0.5)

    # Add row and column numbers
    for i in range(rows):
        ax.text(-0.3, rows - i - 0.5, str(i), ha='right', va='center', fontsize=10)
    for j in range(cols):
        ax.text(j + 0.5, rows + 0.3, str(j), ha='center', va='bottom', fontsize=10)
    
    if highlight_pos:
        ax.add_patch(Rectangle(highlight_pos, 1, 1, fill=True, facecolor='lime', edgecolor='lime', linewidth=2, alpha=0.7))

    # Highlight the (2,1) element and add visited/used ratio
    ax.add_patch(Rectangle((1, 2), 1, 1, fill=False, edgecolor='red', linewidth=2))
    ax.text(1.5, 2.5, f'{visited}/{used}', ha='center', va='center', fontsize=10, color='red', fontweight='bold')

    return ax

dim = 5
fig, axs = plt.subplots(2, 2, figsize=(16, 16))
fig.patch.set_facecolor('#F5F5F5')

cases = [
    ("1/1: Optimal Access", lambda f: (f//(dim*dim), (f//dim)%dim, f%dim)),
    ("1/N: Row-major Access", lambda f: (f//(dim*dim), f%dim, (f//dim)%dim)),
    ("N/N: Column-major Access", lambda f: (f%dim, f//(dim*dim), (f//dim)%dim)),
    ("N/1: Custom Access", lambda f: ((f//dim)%dim, f%dim, f//(dim*dim)))
]

counters = [[0, 0] for _ in range(4)]  # [visited, used] for each case

for ax, (title, _) in zip(axs.flatten(), cases):
    create_matrix_plot(ax, title)

# Remove the overlapping ax_iter
# ax_iter = fig.add_subplot(111)
# ax_iter.axis('off')

# Add a text box for iteration count
iteration_text = fig.text(0.5, 0.02, '', ha='center', va='center', fontsize=16, color='black', fontweight='bold')

def update(frame):
    for idx, (ax, (title, order_func)) in enumerate(zip(axs.flatten(), cases)):
        i, j, k = order_func(frame)
        
        # Update counters for (2,1) element
        if i == 2 and j == 1:
            if "1/1" in title or "1/N" in title:
                counters[idx][0] += 1  # visited once
            else:
                counters[idx][0] += dim  # visited N times

            if "1/1" in title or "N/N" in title:
                counters[idx][1] += 1  # used once
            else:
                counters[idx][1] += dim  # used N times

        create_matrix_plot(ax, title, highlight_pos=(j, dim - i - 1), 
                           visited=counters[idx][0], used=counters[idx][1])

    # Update iteration text
    iteration_text.set_text(f'Iteration: {frame+1}/{dim*dim*dim}')
    
    return axs.flatten()[0], axs.flatten()[1], axs.flatten()[2], axs.flatten()[3], iteration_text

anim = FuncAnimation(fig, update, frames=dim*dim*dim, interval=200, blit=False)

# Save the animation
writer = PillowWriter(fps=5)
try:
    anim.save("matrix_traversal_cases.gif", writer=writer)
    print("Animation saved successfully!")
except Exception as e:
    print(f"An error occurred while saving the animation: {e}")
    print("The animation will be displayed but not saved.")

plt.tight_layout()
plt.subplots_adjust(top=0.95, bottom=0.07)  # Adjust the top and bottom margins
plt.show()