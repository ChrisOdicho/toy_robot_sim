class ToyRobotSim::Table

  def initialize(width, height)
    @width = width
    @height = height
  end

  #############################################################################

  def width
    @width ||= self.width
  end

  def height
    @height ||= self.height
  end

  #############################################################################

  def location_in_range?(location)
    width_in_range?(location.x) && height_in_range(location.y)
  end

  def width_in_range?(x)
    x >= 0 && x <= (width - 1)
  end

  def height_in_range?(y)
    y >= 0 && y <= (height - 1)
  end

end
