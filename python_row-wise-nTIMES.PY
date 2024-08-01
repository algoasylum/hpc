import numpy as np
import matplotlib.pyplot as plt
from matplotlib.animation import FuncAnimation, PillowWriter
from matplotlib.patches import Rectangle
import matplotlib.colors as mcolors

def create_matrix_plot(ax, matrix, title, highlight_pos=None, trail=None, trail_cmap=None, highlight_row=None, highlight_col=None):
    ax.clear()
    ax.set_facecolor('#F0F0F0')  # Light gray background for each subplot
    ax.axis('off')
    ax.set_title(title, fontsize=22, fontweight='bold', color='black', y=1.1)
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
    
    # Add text for matrix elements (positions instead of values)
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
            text = ax.text(-0.3, rows - i - 0.5, f"{i}", ha='right', va='center', fontsize=18, fontweight='bold', color=text_color)
        elif i == rows - 1:
            text_color = i_color if i == highlight_row else 'black'
            text = ax.text(-0.3, rows - i - 0.5, "N-1", ha='right', va='center', fontsize=18, fontweight='bold', color=text_color)
        elif i == 2:
            ax.text(-0.3, rows - i - 0.5, ".", ha='right', va='center', fontsize=24, fontweight='bold', color='black')
            ax.text(-0.3, rows - i - 0.75, ".", ha='right', va='center', fontsize=24, fontweight='bold', color='black')
            ax.text(-0.3, rows - i - 0.25, ".", ha='right', va='center', fontsize=24, fontweight='bold', color='black')
    
    for j in range(cols):
        if j < 2:
            text_color = j_color if j == highlight_col else 'black'
            text = ax.text(j + 0.5, rows + 0.3, f"{j}", ha='center', va='bottom', fontsize=18, fontweight='bold', color=text_color)
        elif j == cols - 1:
            text_color = j_color if j == highlight_col else 'black'
            text = ax.text(j + 0.5, rows + 0.3, "N-1", ha='center', va='bottom', fontsize=18, fontweight='bold', color=text_color)
        elif j == 2:
            ax.text(j + 0.5, rows + 0.3, ".", ha='center', va='bottom', fontsize=24, fontweight='bold', color='black')
            ax.text(j + 0.75, rows + 0.3, ".", ha='center', va='bottom', fontsize=24, fontweight='bold', color='black')
            ax.text(j + 0.25, rows + 0.3, ".", ha='center', va='bottom', fontsize=24, fontweight='bold', color='black')
    
    ax.set_xlim(-0.5, cols + 0.5)
    ax.set_ylim(-0.5, rows + 0.5)
    
    if highlight_pos:
        ax.add_patch(Rectangle(highlight_pos, 1, 1, fill=True, facecolor='lime', edgecolor='lime', linewidth=3, alpha=0.7))
    
    if trail:
        for idx, pos in enumerate(trail):
            color = trail_cmap(idx / len(trail))
            ax.add_patch(Rectangle(pos, 1, 1, fill=True, facecolor=color, edgecolor=color, linewidth=2, alpha=0.5))

dim = 5  # Increased dimension to better show the N-nature
A = np.zeros((dim, dim))
B = np.zeros((dim, dim))
C = np.zeros((dim, dim))

fig = plt.figure(figsize=(24, 8))  # Increased figure height
gs = fig.add_gridspec(2, 5, height_ratios=[4, 1], width_ratios=[4, 1, 4, 1, 4])

ax5 = fig.add_subplot(gs[0, 0])
ax_eq = fig.add_subplot(gs[0, 1])
ax1 = fig.add_subplot(gs[0, 2])
ax_mul = fig.add_subplot(gs[0, 3])
ax3 = fig.add_subplot(gs[0, 4])
ax_iter = fig.add_subplot(gs[1, :])

fig.patch.set_facecolor('#F5F5F5')  # Off-white background for entire figure

ax_mul.axis('off')
ax_eq.axis('off')
ax_iter.axis('off')
ax_mul.text(0.5, 0.5, 'x', fontsize=36, ha='center', va='center', color='black', fontweight='bold')
ax_eq.text(0.5, 0.5, '+=', fontsize=36, ha='center', va='center', color='black', fontweight='bold')

k_color = '#FF1493'  # Deep Pink
j_color = '#00CED1'  # Dark Turquoise
i_color = '#FF8C00'  # Dark Orange

trail_a, trail_b, trail_c = [], [], []
cmap_a = plt.get_cmap('Greys')
cmap_b = plt.get_cmap('Blues')
cmap_c = plt.get_cmap('Oranges')

def update(frame):
    k, j, i = frame // (dim * dim), (frame // dim) % dim, frame % dim
    
    C[i, j] += A[i, k] * B[k, j]
    
    trail_a.append((k, dim - i - 1))
    trail_b.append((j, dim - k - 1))
    trail_c.append((j, dim - i - 1))


    ''' def update(frame):
    i, k, j = frame // (dim * dim), (frame // dim) % dim, frame % dim
    
    C[i, j] += A[i, k] * B[k, j]
    
    trail_a.append((k, dim - i - 1))
    trail_b.append((j, dim - k - 1))
    trail_c.append((j, dim - i - 1))
    
    # ... (rest of the function remains the same)
    '''

    
    '''i, j, k = frame // (dim * dim), (frame // dim) % dim, frame % dim
    
    C[i, j] += A[i, k] * B[k, j]
    
    trail_a.append((k, dim - i - 1))
    trail_b.append((j, dim - k - 1))
    trail_c.append((j, dim - i - 1))
    
    # ... (rest of the function remains the same)
    '''

    
    '''j, i, k = frame // (dim * dim), (frame // dim) % dim, frame % dim
    
    C[i, j] += A[i, k] * B[k, j]
    
    trail_a.append((k, dim - i - 1))
    trail_b.append((j, dim - k - 1))
    trail_c.append((j, dim - i - 1))
    
    # ... (rest of the function remains the same)'''
    

    
    '''j, k, i = frame // (dim * dim), (frame // dim) % dim, frame % dim
    
    C[i, j] += A[i, k] * B[k, j]
    
    trail_a.append((k, dim - i - 1))
    trail_b.append((j, dim - k - 1))
    trail_c.append((j, dim - i - 1))
    
    # ... (rest of the function remains the same)'''
    


    
    '''k, i, j = frame // (dim * dim), (frame // dim) % dim, frame % dim
    
    C[i, j] += A[i, k] * B[k, j]
    
    trail_a.append((k, dim - i - 1))
    trail_b.append((j, dim - k - 1))
    trail_c.append((j, dim - i - 1))
    
    # ... (rest of the function remains the same)'''
    



    
    if len(trail_a) > dim:  # Keep only the last 'dim' positions in the trail
        trail_a.pop(0)
        trail_b.pop(0)
        trail_c.pop(0)
    
    create_matrix_plot(ax5, C, 'Matrix C', (j, dim - i - 1), trail_c, cmap_c, highlight_row=i, highlight_col=j)
    create_matrix_plot(ax1, A, 'Matrix A', (k, dim - i - 1), trail_a, cmap_a, highlight_row=i, highlight_col=k)
    create_matrix_plot(ax3, B, 'Matrix B', (j, dim - k - 1), trail_b, cmap_b, highlight_row=k, highlight_col=j)
    
    # Clear previous texts
    ax_iter.clear()
    ax_iter.axis('off')
    
    # Add new colored text for each variable with more space between them
    ax_iter.text(0.3, 0.5, f'Iteration:', ha='right', va='center', fontsize=20, color='black', fontweight='bold')
    ax_iter.text(0.35, 0.5, f'k', ha='left', va='center', fontsize=20, color=k_color, fontweight='bold')
    ax_iter.text(0.37, 0.5, f'={k}', ha='left', va='center', fontsize=20, color='black', fontweight='bold')
    ax_iter.text(0.45, 0.5, f'j', ha='left', va='center', fontsize=20, color=j_color, fontweight='bold')
    ax_iter.text(0.47, 0.5, f'={j}', ha='left', va='center', fontsize=20, color='black', fontweight='bold')
    ax_iter.text(0.55, 0.5, f'i', ha='left', va='center', fontsize=20, color=i_color, fontweight='bold')
    ax_iter.text(0.57, 0.5, f'={i}', ha='left', va='center', fontsize=20, color='black', fontweight='bold')
    
    return ax1, ax3, ax5, ax_iter

# Increased interval to slow down the animation
anim = FuncAnimation(fig, update, frames=dim*dim*dim, interval=500, blit=False)

# Save the animation
writer = PillowWriter(fps=2)  # Reduced fps to slow down the saved animation
try:
    anim.save("anim-kji.gif", writer=writer)
    print("Animation saved successfully!")
except Exception as e:
    print(f"An error occurred while saving the animation: {e}")
    print("The animation will be displayed but not saved.")

plt.tight_layout()
plt.show()