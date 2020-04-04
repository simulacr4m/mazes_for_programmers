# @Author: S. Sharma <silentcat>
# @Date:   2019-12-18T21:20:20-06:00
# @Email:  silentcat@protonmail.com
# @Last modified by:   silentcat
# @Last modified time: 2019-12-18T21:21:49-06:00

class HuntAndKill
  def self.on(grid)
    current = grid.random_cell

    while current
      unvisited_neighbors = current.neighbors.select { |n| n.links.empty? }

      if unvisited_neighbors.any?
        neighbor = unvisited_neighbors.sample
        current.link(neighbor)
        current = neighbor
      else
        current = nil

        grid.each_cell do |cell|
          visited_neighbors = cell.neighbors.select { |n| n.links.any? }
          if cell.links.empty? && visited_neighbors.any?
            current = cell

            neighbor = visited_neighbors.sample
            current.link(neighbor)
            break
          end
        end
      end
    end
    grid
  end
end
