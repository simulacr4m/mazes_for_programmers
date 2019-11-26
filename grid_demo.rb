# @Author: S. Sharma <silentcat>
# @Date:   2019-11-24T23:23:28-06:00
# @Email:  silentcat@protonmail.com
# @Last modified by:   silentcat
# @Last modified time: 2019-11-24T23:29:28-06:00

require 'grid'
require 'binary_tree'
require 'sidewinder'

puts "Enter algorithm"
type = gets

puts "Enter rows"
rows = Integer(gets)

puts "Enter columns"
columns = Integer(gets)

grid = Grid.new(rows, columns)

if type.eql? "Binary Tree\n"
  BinaryTree.on(grid)
elsif type.eql? "Sidewinder\n"
  Sidewinder.on(grid)
else
  puts "No such algorithm available"
end

img = grid.to_png(cell_size:40)
img.save "maze.png"
