# @Author: S. Sharma <silentcat>
# @Date:   2019-12-01T12:41:39-06:00
# @Email:  silentcat@protonmail.com
# @Last modified by:   silentcat
# @Last modified time: 2019-12-01T12:43:05-06:00

require 'grid'
require 'wilsons'

grid = Grid.new(20, 20)
Wilsons.on(grid)

filename = "wilsons.png"
grid.to_png.save(filename)
puts "saved to #{filename}"
