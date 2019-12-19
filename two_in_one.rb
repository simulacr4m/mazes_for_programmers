# @Author: S. Sharma <silentcat>
# @Date:   2019-12-18T20:38:41-06:00
# @Email:  silentcat@protonmail.com
# @Last modified by:   silentcat
# @Last modified time: 2019-12-18T20:52:30-06:00

require 'binary_tree'
require 'sidewinder'
require 'aldous_broder'
require 'wilsons'
require 'grid'

puts 'Enter rows: '
row = Integer(gets)
puts 'Enter columns: '
column = Integer(gets)

halfway_row = row / 2

grid = Grid.new(row, column)
BinaryTree.on(grid, rstart=0, rend=halfway_row-1)
Sidewinder.on(grid, rstart=halfway_row)
puts grid
