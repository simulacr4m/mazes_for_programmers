# @Author: S. Sharma <silentcat>
# @Date:   2019-11-25T13:46:19-06:00
# @Email:  silentcat@protonmail.com
# @Last modified by:   silentcat
# @Last modified time: 2019-11-25T14:40:15-06:00

require 'bitfield_grid'
require 'bitfield_tree'

g = BitfieldGrid.new(4, 4)
BitfieldBinaryTree.on(g)
puts g
