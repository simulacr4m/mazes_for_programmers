# @Author: S. Sharma <silentcat>
# @Date:   2019-12-01T12:21:39-06:00
# @Email:  silentcat@protonmail.com
# @Last modified by:   silentcat
# @Last modified time: 2019-12-01T12:22:31-06:00

class AldousBroder

  def self.on(grid)
    cell = grid.random_cell
    unvisited = grid.size - 1

    while unvisited > 0
      neighbor = cell.neighbors.sample

      if neighbor.links.empty?
        cell.link(neighbor)
        unvisited -= 1
      end

      cell = neighbor
    end

    grid
  end
  
end
