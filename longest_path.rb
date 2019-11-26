# @Author: S. Sharma <silentcat>
# @Date:   2019-11-25T18:35:56-06:00
# @Email:  silentcat@protonmail.com
# @Last modified by:   silentcat
# @Last modified time: 2019-11-25T18:37:20-06:00

require 'distance_grid'
require 'binary_tree'

grid = DistanceGrid.new(5, 5)
BinaryTree.on(grid)

start = grid[0, 0]

distances = start.distances
new_start, distance = distances.max

new_distances = new_start.distances
goal, distance = new_distances.max

grid.distances = new_distances.path_to(goal)
puts grid
