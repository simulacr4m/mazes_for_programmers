# @Author: S. Sharma <silentcat>
# @Date:   2019-11-25T18:47:26-06:00
# @Email:  silentcat@protonmail.com
# @Last modified by:   silentcat
# @Last modified time: 2019-11-25T19:01:34-06:00

require 'colored_grid'
require 'binary_tree'

grid = ColoredGrid.new(25, 25)
BinaryTree.on(grid)

start = grid[grid.rows / 2, grid.columns / 2]

grid.distances = start.distances

filename = "colorized.png"
grid.to_png.save filename
puts "saved to #{filename}"
