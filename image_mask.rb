# @Author: S. Sharma <simulacr4m>
# @Date:   2020-04-08T22:39:40-05:00
# @Email:  silentcat@protonmail.com
# @Last modified by:   simulacr4m
# @Last modified time: 2020-04-08T23:30:48-05:00

require 'mask'
require 'masked_grid'
require 'recursive_backtracker'

abort "Please specify a PNG image to use as a template" if ARGV.empty?
mask = Mask.from_png(ARGV.first)
grid = MaskedGrid.new(mask)
RecursiveBacktracker.on(grid)

filename = "masked.png"
grid.to_png(cell_size: 5).save(filename)
puts "saved image to #{filename}"
