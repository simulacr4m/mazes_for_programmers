# @Author: S. Sharma <silentcat>
# @Date:   2019-11-25T19:05:45-06:00
# @Email:  silentcat@protonmail.com
# @Last modified by:   silentcat
# @Last modified time: 2019-11-25T19:33:56-06:00

class Node
  attr_reader :row, :column
  attr_accessor :north, :south, :east, :west

  def initialize(row, column)
    @row = row
    @column = column
    @links = {}

    self.north = nil
    self.south = nil
    self.east = nil
    self.west = nil
  end

  def link(node, bidi=true)
    @links[node] = true
    node.link(self, false) if bidi
  end

  def linked?(node)
    @links.key?(node)
  end

end
