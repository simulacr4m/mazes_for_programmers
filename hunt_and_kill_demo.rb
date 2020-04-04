# @Author: S. Sharma <silentcat>
# @Date:   2019-12-18T21:25:39-06:00
# @Email:  silentcat@protonmail.com
# @Last modified by:   silentcat
# @Last modified time: 2019-12-18T21:33:51-06:00

require 'colored_grid'
require 'hunt_and_kill'

grid = ColoredGrid.new(20, 20)
HuntAndKill.on(grid)
grid.distances = grid[0, 0].distances

filename = "hunt_and_kill.png"
grid.to_png.save(filename)
puts "saved to #{filename}"
