# @Author: S. Sharma <silentcat>
# @Date:   2019-11-25T18:14:55-06:00
# @Email:  silentcat@protonmail.com
# @Last modified by:   silentcat
# @Last modified time: 2019-11-25T18:27:50-06:00

require 'distance_grid'
require 'binary_tree'
require 'sidewinder'

printf "Enter algorithm: "
algo = gets
printf "Enter rows: "
rows = Integer(gets)
printf "Enter columns "
columns = Integer(gets)

grid = DistanceGrid.new(rows, columns)

if algo.eql? "Binary Tree\n"
  BinaryTree.on(grid)
elsif algo.eql? "Sidewinder\n"
  Sidewinder.on(grid)
else
  puts "No such algorithm exists"
end

start = grid[0, 0]
distances = start.distances

grid.distances = distances
puts grid

puts "path from northwest corner to southwest corner"
grid.distances = distances.path_to(grid[grid.rows - 1, 0])
puts grid.to_s
