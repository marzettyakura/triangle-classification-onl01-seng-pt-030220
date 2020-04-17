class Triangle
  attr_accessor :side1, :side2, :side3
  @sides = []
  def initialize(side1, side2, side3)
    @side1, @side2, @side3 = side1, side2, side3
    @sides = [side1, side2, side3]
  end
  def kind
    if valid? == false
      raise TriangleError
    elsif(equilateral?)
      :equilateral
    elsif(scalene?)
      :scalene
    elsif(isosceles?)
      :isosceles
    end
  end
  def equilateral?
    (@side1 == @side2) && (@side1 == @side3)
  end
  def scalene?
    (@side1 != @side2) && (@side1!= @side3) && (@side2 != @side3)
  end
  def isosceles?
    (@side2 == @side3) || (@side1 == @side2) || (@side1 == @side3)
  end
  def valid?
    if (@side1 + @side2 > @side3) && (@side2 + @side3 > @side1) && (@side1 + @side3 > @side2)
      return true
    else
      raise TriangleError
    end
  end
  class TriangleError < StandardError
    def message
      "This triangle is not valid."
    end
  end
end

class TriangleError < StandardError

end
