import numpy as np
import matplotlib.pyplot as plt
from matplotlib.animation import FuncAnimation, PillowWriter
from matplotlib.patches import Rectangle

def create_matrix_plot(ax, matrix, title, highlight_pos=None, highlight_row=None, highlight_col=None):
    ax.clear()
    ax.set_facecolor('#F0F0F0')
    ax.axis('off')
    ax.set_title(title, fontsize=22, fontweight='bold', color='black', y=1.05)
    rows, cols = matrix.shape
    
    # Draw square brackets
    bracket_width = 0.1
    line_width = 3
    ax.plot([0, 0, bracket_width], [0, rows, rows], color='black', linewidth=line_width)
    ax.plot([cols, cols, cols-bracket_width], [0, rows, rows], color='black', linewidth=line_width)
    ax.plot([0, bracket_width], [0, 0], color='black', linewidth=line_width)
    ax.plot([cols-bracket_width, cols], [0, 0], color='black', linewidth=line_width)
    ax.plot([0, bracket_width], [rows, rows], color='black', linewidth=line_width)
    ax.plot([cols-bracket_width, cols], [rows, rows], color='black', linewidth=line_width)
    
    # Add text for matrix elements (positions in N-wise terms)
    for i in range(rows):
        for j in range(cols):
            if i < 2 and j < 2:
                ax.text(j + 0.5, rows - i - 0.5, f"{i},{j}", 
                        ha='center', va='center', fontsize=14, color='black')
            elif i == 2 and j == 2:
                ax.text(j + 0.5, rows - i - 0.5, ".", ha='center', va='center', fontsize=24, color='black')
                ax.text(j + 0.5, rows - i - 0.75, ".", ha='center', va='center', fontsize=24, color='black')
                ax.text(j + 0.5, rows - i - 0.25, ".", ha='center', va='center', fontsize=24, color='black')
            elif i == rows-1:
                if j < 2:
                    ax.text(j + 0.5, rows - i - 0.5, f"N-1,{j}", 
                            ha='center', va='center', fontsize=14, color='black')
                elif j == cols-1:
                    ax.text(j + 0.5, rows - i - 0.5, "N-1,N-1", 
                            ha='center', va='center', fontsize=14, color='black')
            elif j == cols-1:
                if i < 2:
                    ax.text(j + 0.5, rows - i - 0.5, f"{i},N-1", 
                            ha='center', va='center', fontsize=14, color='black')
    
    # Add row and column labels with potential coloring
    for i in range(rows):
        if i < 2:
            text_color = i_color if i == highlight_row else 'black'
            ax.text(-0.3, rows - i - 0.5, f"{i}", ha='right', va='center', fontsize=18, fontweight='bold', color=text_color)
        elif i == rows - 1:
            text_color = i_color if i == highlight_row else 'black'
            ax.text(-0.3, rows - i - 0.5, "N-1", ha='right', va='center', fontsize=18, fontweight='bold', color=text_color)
        elif i == 2:
            ax.text(-0.3, rows - i - 0.5, ".", ha='right', va='center', fontsize=24, fontweight='bold', color='black')
            ax.text(-0.3, rows - i - 0.75, ".", ha='right', va='center', fontsize=24, fontweight='bold', color='black')
            ax.text(-0.3, rows - i - 0.25, ".", ha='right', va='center', fontsize=24, fontweight='bold', color='black')
    
    for j in range(cols):
        if j < 2:
            text_color = j_color if j == highlight_col else 'black'
            ax.text(j + 0.5, rows + 0.3, f"{j}", ha='center', va='bottom', fontsize=18, fontweight='bold', color=text_color)
        elif j == cols - 1:
            text_color = j_color if j == highlight_col else 'black'
            ax.text(j + 0.5, rows + 0.3, "N-1", ha='center', va='bottom', fontsize=18, fontweight='bold', color=text_color)
        elif j == 2:
            ax.text(j + 0.5, rows + 0.3, ".", ha='center', va='bottom', fontsize=24, fontweight='bold', color='black')
            ax.text(j + 0.75, rows + 0.3, ".", ha='center', va='bottom', fontsize=24, fontweight='bold', color='black')
            ax.text(j + 0.25, rows + 0.3, ".", ha='center', va='bottom', fontsize=24, fontweight='bold', color='black')
    
    ax.set_xlim(-0.5, cols + 0.5)
    ax.set_ylim(-0.5, rows + 0.5)
    
    if highlight_pos:
        ax.add_patch(Rectangle(highlight_pos, 1, 1, fill=True, facecolor='lime', edgecolor='lime', linewidth=3, alpha=0.7))


dim = 5
matrix = np.zeros((dim, dim))

fig = plt.figure(figsize=(12, 16))
gs = fig.add_gridspec(3, 1, height_ratios=[1, 4, 1])

ax_title = fig.add_subplot(gs[0, 0])
ax1 = fig.add_subplot(gs[1, 0])
ax_iter = fig.add_subplot(gs[2, 0])

fig.patch.set_facecolor('#F5F5F5')

ax_title.axis('off')
ax_iter.axis('off')

k_color = '#FF1493'  # Deep Pink (Outermost)
j_color = '#00CED1'  # Dark Turquoise (Middle)
i_color = '#FF8C00'  # Dark Orange (Innermost)

def update_title(ax, title):
    ax.clear()
    ax.axis('off')
    ax.text(0.5, 0.5, title, ha='center', va='center', fontsize=24, fontweight='bold')

traversal_title = "Single Element Access with Column-wise Progression"

update_title(ax_title, traversal_title)

def update(frame):
    k = frame // (dim * dim)  # Outermost loop (column)
    i = (frame // dim) % dim  # Middle loop (row)
    j = frame % dim           # Innermost loop (element)
    
    create_matrix_plot(ax1, matrix, 'Matrix Traversal', (k, dim - i - 1), highlight_row=i, highlight_col=k)
    
    # Clear previous texts
    ax_iter.clear()
    ax_iter.axis('off')
    
    # Add new colored text for each variable
    ax_iter.text(0.3, 0.7, f'Outermost (column):', ha='right', va='center', fontsize=20, color='black', fontweight='bold')
    ax_iter.text(0.35, 0.7, f'{k}', ha='left', va='center', fontsize=20, color=k_color, fontweight='bold')
    ax_iter.text(0.3, 0.5, f'Middle (row):', ha='right', va='center', fontsize=20, color='black', fontweight='bold')
    ax_iter.text(0.35, 0.5, f'{i}', ha='left', va='center', fontsize=20, color=i_color, fontweight='bold')
    ax_iter.text(0.3, 0.3, f'Innermost (element):', ha='right', va='center', fontsize=20, color='black', fontweight='bold')
    ax_iter.text(0.35, 0.3, f'{j}', ha='left', va='center', fontsize=20, color=j_color, fontweight='bold')
    
    return ax1, ax_iter



anim = FuncAnimation(fig, update, frames=dim*dim*dim, interval=500, blit=False)

# Save the animation
writer = PillowWriter(fps=2)  # Reduced fps to slow down the saved animation
try:
    anim.save("column-wise_traversal.gif", writer=writer)
    print("Animation saved successfully!")
except Exception as e:
    print(f"An error occurred while saving the animation: {e}")
    print("The animation will be displayed but not saved.")

plt.tight_layout()
plt.show()