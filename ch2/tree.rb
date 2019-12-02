# @Author: S. Sharma <silentcat>
# @Date:   2019-11-25T19:11:39-06:00
# @Email:  silentcat@protonmail.com
# @Last modified by:   silentcat
# @Last modified time: 2019-11-25T23:01:18-06:00

require 'node'

class Tree
  attr_accessor :rows, :columns

  def initialize(rows, columns)
    @rows = rows
    @columns = columns
    @root = create_grid
  end

  def [](row, column)
    x = @root
    for i in 0..@rows-1
      tmp = x
      for k in 0..@columns-1
        return tmp if tmp.row == row && tmp.column == column
        tmp = tmp.east
      end
      x = x.south
    end
  end

  def link_vert(first)
    start = first
    start2 = first.south
    while start2 != nil
      x = start
      y = start2
      while x != nil && y != nil
        x.south = y
        y.north = x
        x = x.east
        y = y.east
      end
      start = start.south
      start2 = start2.south
    end
  end


  def create_grid
    first = Node.new(0, 0)
    x = first
    for row in 0..@rows-1
      tmp = x
      for column in 1..@columns-1
        tmp.east = Node.new(row, column)
        tmp.east.west = tmp
        tmp = tmp.east
      end
      x.south = Node.new(row+1, 0)
      x.south.north = x
      x = x.south
    end
    link_vert(first)
    return first
  end

  def traverse
    x = @root
    for i in 0..@rows-1
      tmp = x
      for k in 0..@columns-1
        puts String(tmp.row) + " " + String(tmp.column)
        tmp = tmp.east
      end
      x = x.south
    end
  end

  def to_s
    output = "+" + "---+" * columns + "\n"

    for row in 0..@rows-1
      top = "|"
      bottom = "+"

      for column in 0..@columns-1
        cell = self[row, column]
        body = "   "
        east_boundary = (cell.linked?(cell.east) ? " " : "|")
        top << body << east_boundary
        south_boundary = (cell.linked?(cell.south) ? "   " : "---")
        corner = "+"
        bottom << south_boundary << corner
      end

      output << top << "\n"
      output << bottom << "\n"
    end

    output
  end

end
