# @Author: S. Sharma <silentcat>
# @Date:   2019-12-01T12:34:53-06:00
# @Email:  silentcat@protonmail.com
# @Last modified by:   silentcat
# @Last modified time: 2019-12-01T12:36:46-06:00

class Wilsons

  def self.on(grid)
    unvisited = []
    grid.each_cell { |cell| unvisited << cell }

    first = unvisited.sample
    unvisited.delete(first)

    while unvisited.any?
      cell = unvisited.sample
      path = [cell]

      while unvisited.include?(cell)
        cell = cell.neighbors.sample
        position = path.index(cell)
        if position
          path = path[0..position]
        else
          path << cell
        end
      end

      0.upto(path.length-2) do |index|
        path[index].link(path[index + 1])
        unvisited.delete(path[index])
      end
    end

    grid
  end
  
end
