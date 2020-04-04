# @Author: S. Sharma <silentcat>
# @Date:   2019-12-19T22:25:24-06:00
# @Email:  silentcat@protonmail.com
# @Last modified by:   silentcat
# @Last modified time: 2019-12-19T22:25:56-06:00

require 'recursive_backtracker'
require 'grid'

grid = Grid.new(20, 20)
RecursiveBacktracker.on(grid)

filename = "recursive_backtracker.png"
grid.to_png.save(filename)
puts "saved to #{filename}"
