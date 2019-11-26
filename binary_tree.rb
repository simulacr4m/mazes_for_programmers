# @Author: S. Sharma <silentcat>
# @Date:   2019-11-24T22:43:47-06:00
# @Email:  silentcat@protonmail.com
# @Last modified by:   silentcat
# @Last modified time: 2019-11-24T22:46:56-06:00

class BinaryTree

  def self.on(grid)
    grid.each_cell do |cell|
      neighbors = []
      neighbors << cell.north if cell.north
      neighbors << cell.east if cell.east

      index = rand(neighbors.length)
      neighbor = neighbors[index]

      cell.link(neighbor) if neighbor
    end

    grid
  end
end
