# Total size
size_per_field = 4 * 8 = 32
size_total_field = row * size_per_field

# Number of pages per file:
pages = (row * size_per_field)/8kb

# Number of pages read:
n = k * pages
