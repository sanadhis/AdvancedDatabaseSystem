# Scenario of Queries and Data Distribution
1. SELECT A,B + DISTINCT Distribution (many unique values)
2. SELECT A,B + Redundant Distribution (many similar values)
3. SELECT (*) + DISTINCT Distribution (many unique values)
4. SELECT (*) + Redundant Distribution (many similar values)
5. INSERT + DISTINCT Distribution (many unique values)
6. INSERT + Redundant Distribution (many similar values)
7. UPDATE + DISTINCT Distribution (many unique values)
8. UPDATE + Redundant Distribution (many similar values)
9. DELETE + DISTINCT Distribution (many unique values)
10. DELETE + Redundant Distribution (many similar values)
11. AGGREGATE + DISTINCT Distribution (many unique values)
12. AGGREGATE + Redundant Distribution (many similar values)

# Compression Techniques
* i. Dictionary encoding
* ii. RLE

# Layout Combinations
* A. row store + volcano
* B. column store + block
* C. column store + vector

# Worst Performance of Compression + Layout
* A : 
* B :
* C :

# Best Performance of Compression + Layout
* A : 3
* B : 1,2 + i,ii
* C :
