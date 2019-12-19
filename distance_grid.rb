# @Author: S. Sharma <silentcat>
# @Date:   2019-11-25T18:13:23-06:00
# @Email:  silentcat@protonmail.com
# @Last modified by:   silentcat
# @Last modified time: 2019-12-18T20:30:04-06:00

require 'grid'

class DistanceGrid < Grid
  attr_accessor :distances

  def contents_of(cell)
    if distances && distances[cell]
      distances[cell].to_s(36)
    else
      super
    end
  end

  def get_len
    mcell, mdist = self.distances.max
    len = mdist.to_s.length
  end
end
