class Triangle
  attr_accessor :x, :y, :z
  
  def initialize(x, y, z)
    @x = x
    @y = y
    @z = z
  end
  
  def kind
    if @x <= 0 || @y <= 0 || @z <= 0
      raise TriangleError
    elsif @x + @y <= @z || @y + @z <= @x || @z + @x <= @y
      raise TriangleError
    elsif @x == @y && @y == @z
      :equilateral
    elsif @x == @y || @y == @z || @z == @x
      :isosceles
    else
      :scalene
    end
  end

end

class TriangleError < StandardError
end