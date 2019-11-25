# @Author: S. Sharma <silentcat>
# @Date:   2019-11-25T13:46:03-06:00
# @Email:  silentcat@protonmail.com
# @Last modified by:   silentcat
# @Last modified time: 2019-11-25T14:49:09-06:00

class BitfieldGrid
  attr_accessor :rows, :columns

  def initialize(rows, columns)
    @rows = rows
    @columns = columns

    @grid = Array.new(rows*columns)
    for i in 0..size()-1
      @grid[i] = 0
    end
  end

  # Since we don't have a cell class, we'll have to implement some
  # of the cell methods here

  # Connect a to b and vice versa
  def link(a, b, bidi=true)
    dirb = get_dir(a, b)
    @grid[a] |= dirb
    link(b, a, false) if bidi
  end

  # Check if a and b are linked
  def linked?(a, b)
    if a == nil || b == nil
      return false
    end
    dirb = get_dir(a, b)
    dira = get_dir(b, a)
    if dirb == 0 || dira == 0 || @grid[a] == 0 || @grid[b] == 0
      return false
    end
    if @grid[a] & dirb > 0 && @grid[b] & dira > 0
      return @grid[a] & dirb == ((@grid[b] & dira) << 1) || ((@grid[a] & dirb) << 1) == @grid[b] & dira
    end
    return false
  end

  # Get b's direction w.r.t a
  def get_dir(a, b)
    return 0b1000 if b == a - @rows # North
    return 0b0100 if b == a + @rows # South
    return 0b0010 if b == a + 1 && get_row(a) == get_row(b)
    return 0b0001 if b == a - 1 && get_row(a) == get_row(b)
    return 0b0000
  end

  # Get the cell in direction dir w.r.t a
  def get_cell(a, dir)
    return a - @rows if dir == 0b1000 && a - @rows >= 0
    return a + @rows if dir == 0b0100 && a + @rows < size()
    return a + 1 if dir == 0b0010 && a + 1 < size && (a+1) % columns != 0
    return a - 1 if dir == 0b0001 && a - 1 >= 0 && (a-1) % columns != 0 
    return nil
  end

  # Convert the 2D (row, col) to an index for the grid
  def convert_2d_1d(row, col)
    return row*@columns + col
  end

  def get_row(num)
    return num / rows
  end

  # Back to grid functions...

  def size
    return @rows * @columns
  end

  def to_s
    output = "+" + "---+" * columns + "\n"

    for i in 0..@rows-1
      top = "|"
      bottom = "+"

      for k in 0..@columns-1
        cell = convert_2d_1d(i, k)
        body = "   "
        east_boundary = (linked?(cell, get_cell(cell, 0b0010)) ? " " : "|")
        top << body << east_boundary
        south_boundary = (linked?(cell, get_cell(cell, 0b0100)) ? "   " : "---")
        corner = "+"
        bottom << south_boundary << corner
      end

      output << top << "\n"
      output << bottom << "\n"
    end

    output
  end

end
