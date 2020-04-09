# @Author: S. Sharma <simulacr4m>
# @Date:   2020-04-08T22:23:52-05:00
# @Email:  silentcat@protonmail.com
# @Last modified by:   simulacr4m
# @Last modified time: 2020-04-08T23:20:56-05:00

require 'mask'
require 'masked_grid'
require 'recursive_backtracker'

mask = Mask.new(5, 5)

mask[0, 0] = false
mask[2, 2] = false
mask[4, 4] = false

grid = MaskedGrid.new(mask)
RecursiveBacktracker.on(grid)

puts grid
