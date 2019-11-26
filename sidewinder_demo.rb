# @Author: S. Sharma <silentcat>
# @Date:   2019-11-24T23:06:38-06:00
# @Email:  silentcat@protonmail.com
# @Last modified by:   silentcat
# @Last modified time: 2019-11-24T23:07:18-06:00

require 'grid'
require 'sidewinder'

grid = Grid.new(4, 4)
Sidewinder.on(grid)

puts grid
