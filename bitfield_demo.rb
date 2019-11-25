# @Author: S. Sharma <silentcat>
# @Date:   2019-11-25T13:46:19-06:00
# @Email:  silentcat@protonmail.com
# @Last modified by:   silentcat
# @Last modified time: 2019-11-25T14:51:29-06:00

require 'bitfield_grid'
require 'bitfield_tree'

puts "Enter rows: "
rows = Integer(gets)
puts "Enter columns: "
cols = Integer(gets)
g = BitfieldGrid.new(rows, cols)
BitfieldBinaryTree.on(g)
puts g
