# @Author: S. Sharma <silentcat>
# @Date:   2019-12-19T22:23:10-06:00
# @Email:  silentcat@protonmail.com
# @Last modified by:   silentcat
# @Last modified time: 2019-12-19T22:24:40-06:00

class RecursiveBacktracker

  def self.on(grid, start_at : grid.random_cell)
    stack = []
    stack.push start_at
    while stack.any?
      current = stack.last
      neighbors = current.neighbors.select { |n| n.links.empty? }

      if neighbors.empty?
        stack.pop
      else
        neighbor = neighbors.sample
        current.link(neighbor)
        stack.push(neighbor)
      end
    end

    grid
  end
  
end
