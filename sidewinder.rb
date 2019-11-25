# @Author: S. Sharma <silentcat>
# @Date:   2019-11-24T23:03:43-06:00
# @Email:  silentcat@protonmail.com
# @Last modified by:   silentcat
# @Last modified time: 2019-11-24T23:05:47-06:00

class Sidewinder

  def self.on(grid)
    grid.each_row do |row|
      run = []

      row.each do |cell|
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
