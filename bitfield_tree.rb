# @Author: S. Sharma <silentcat>
# @Date:   2019-11-25T13:46:35-06:00
# @Email:  silentcat@protonmail.com
# @Last modified by:   silentcat
# @Last modified time: 2019-11-25T14:49:35-06:00

class BitfieldBinaryTree

  def self.on(grid)
    for cell in 0..grid.size()-1
      neighbors = []

      north = grid.get_cell(cell, 0b1000)
      east = grid.get_cell(cell, 0b0010)
      neighbors << north if north
      neighbors << east if east

      index = rand(neighbors.length)
      neighbor = neighbors[index]
      grid.link(cell, neighbor) if neighbor
    end

    grid
  end
end
