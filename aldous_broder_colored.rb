# @Author: S. Sharma <silentcat>
# @Date:   2019-12-01T12:25:35-06:00
# @Email:  silentcat@protonmail.com
# @Last modified by:   silentcat
# @Last modified time: 2019-12-01T12:28:23-06:00

require 'colored_grid'
require 'aldous_broder'

6.times do |n|
  grid = ColoredGrid.new(20, 20)
  AldousBroder.on(grid)

  middle = grid[grid.rows / 2, grid.columns / 2]
  grid.distances = middle.distances

  filename = "aldous_broder_%02d.png" % n
  grid.to_png.save(filename)
  puts "saved to #{filename}"
end
