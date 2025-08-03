import matplotlib.pyplot as plt
from matplotlib.patches import Rectangle, FancyArrow

# Create a figure for a detailed Zynq PS block diagram
plt.figure(figsize=(14, 8))

# Draw DDR Memory block on the left
ddr_block = Rectangle((0.05, 0.4), 0.15, 0.3, edgecolor='black', facecolor='#d6eaf8')
plt.gca().add_patch(ddr_block)
plt.text(0.125, 0.55, 'DDR Memory', ha='center', va='center', fontsize=12)

# Arrow from DDR Memory to PS DDR Controller
plt.arrow(0.2, 0.55, 0.05, 0.0, head_width=0.015, head_length=0.02, length_includes_head=True)

# Draw PS block
ps_block = Rectangle((0.25, 0.05), 0.5, 0.9, edgecolor='black', facecolor='#f5b7b1')
plt.gca().add_patch(ps_block)
plt.text(0.5, 0.92, 'Zynq PS (Processing System)', ha='center', va='center', fontsize=14, fontweight='bold')

# Draw CPU subsystem inside PS
cpu_block = Rectangle((0.3, 0.7), 0.4, 0.2, edgecolor='black', facecolor='#fadbd8')
plt.gca().add_patch(cpu_block)
plt.text(0.5, 0.8, 'Dual ARM Cortex-A9\nSCU\nL2 Cache', ha='center', va='center', fontsize=11)

# Draw GIC inside PS
gic_block = Rectangle((0.3, 0.6), 0.15, 0.1, edgecolor='black', facecolor='#f8c471')
plt.gca().add_patch(gic_block)
plt.text(0.375, 0.65, 'GIC\n(Interrupt Controller)', ha='center', va='center', fontsize=10)

# Draw DMA inside PS
dma_block = Rectangle((0.55, 0.6), 0.15, 0.1, edgecolor='black', facecolor='#f8c471')
plt.gca().add_patch(dma_block)
plt.text(0.625, 0.65, 'DMA\n(AXI DMA Engine)', ha='center', va='center', fontsize=10)

# Draw DDR Controller inside PS
ddrc_block = Rectangle((0.3, 0.45), 0.4, 0.1, edgecolor='black', facecolor='#d5f5e3')
plt.gca().add_patch(ddrc_block)
plt.text(0.5, 0.5, 'DDR Controller', ha='center', va='center', fontsize=11)

# Arrow from DDR Controller to DDR Memory
plt.arrow(0.3, 0.5, -0.05, 0.0, head_width=0.015, head_length=0.02, length_includes_head=True)

# Draw AXI Interconnect inside PS
axi_block = Rectangle((0.3, 0.1), 0.4, 0.3, edgecolor='black', facecolor='#d2b4de')
plt.gca().add_patch(axi_block)
plt.text(0.5, 0.25, 'AXI Interconnect\nGP0/GP1, HP0~HP3', ha='center', va='center', fontsize=11)

# Arrow from CPU to AXI Interconnect
plt.arrow(0.5, 0.7, 0.0, -0.1, head_width=0.015, head_length=0.02, length_includes_head=True)

# Draw PL Fabric block on the right
pl_block = Rectangle((0.8, 0.3), 0.15, 0.4, edgecolor='black', facecolor='#aed6f1')
plt.gca().add_patch(pl_block)
plt.text(0.875, 0.5, 'PL Fabric', ha='center', va='center', fontsize=12)

# Arrow from AXI Interconnect to PL Fabric
plt.arrow(0.7, 0.25, 0.05, 0.0, head_width=0.015, head_length=0.02, length_includes_head=True)
plt.text(0.65, 0.25, 'AXI\n(Fabric)', ha='center', va='center', fontsize=10)

# Turn off axes and display
plt.axis('off')
plt.title('Zynq PS 상세 구조 (DDR에서 PS 내부, PL 인터커넥트까지)', fontsize=16)
plt.show()

