# @Author: S. Sharma <simulacr4m>
# @Date:   2020-04-08T22:14:35-05:00
# @Email:  silentcat@protonmail.com
# @Last modified by:   simulacr4m
# @Last modified time: 2020-04-08T22:16:00-05:00

require 'grid'
require 'recursive_backtracker'

grid = Grid.new(5, 5)

# orphan cell in northwest corner

grid[0, 0].east.west = nil
grid[0, 0].south.north = nil

# orphan cell in southeast corner

grid[4, 4].west.east = nil
grid[4, 4].north.south = nil

RecursiveBacktracker.on(grid, start_at: grid[1,1])
puts grid
