# @Author: S. Sharma <silentcat>
# @Date:   2019-11-25T23:03:17-06:00
# @Email:  silentcat@protonmail.com
# @Last modified by:   silentcat
# @Last modified time: 2019-11-25T23:04:47-06:00

class BinaryTreeEn

  def self.on(grid)
    for i in 0..grid.rows-1
      for k in 0..grid.columns-1
        cell = grid[i, k]
        neighbors = []
        neighbors << cell.north if cell.north
        neighbors << cell.east if cell.east

        index = rand(neighbors.length)
        neighbor = neighbors[index]

        cell.link(neighbor) if neighbor
      end
    end

    grid
  end
end
