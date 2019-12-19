# @Author: S. Sharma <silentcat>
# @Date:   2019-11-24T23:03:43-06:00
# @Email:  silentcat@protonmail.com
# @Last modified by:   silentcat
# @Last modified time: 2019-12-18T20:38:20-06:00

class Sidewinder

  def self.on(grid, rstart=0, rend=grid.rows-1, cstart=0, cend=grid.columns-1)
    for row in rstart..rend
      run = []

      for column in cstart..cend
        cell = grid[row, column]
        run << cell

        at_eastern_boundary = (cell.east == nil)
        at_northern_boundary = (cell.north == nil)

        should_close_out = at_eastern_boundary ||
                            (!at_northern_boundary && rand(2) == 0)
        if should_close_out
          member = run.sample # sample chooses a random cell
          member.link(member.north) if member.north
          run.clear
        else
          cell.link(cell.east)
        end
      end
    end

    grid
  end

end
