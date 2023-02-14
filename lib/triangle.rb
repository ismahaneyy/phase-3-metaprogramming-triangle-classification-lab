class Triangle
  # write code here
  attr_accessor :side1, :side2, :side3
  def initialize(side1,side2,side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end
  def kind 
    sum1 = self.side1 + self.side2
    sum2 = self.side2 + self.side3
    sum3 = self.side1 + self.side3

    if(self.side1 <= 0 || self.side2 <= 0 || self.side3 <= 0 || sum1<=self.side3 || sum2<=self.side1 || sum3<=self.side2 )
      #begin

        raise TriangleError
      #rescue TriangleError => error
         # puts error.message
      #end
    elsif (self.side1 == self.side2 && self.side2 == self.side3 && self.side1 != 0)
        return :equilateral
      elsif (self.side1==self.side2 || self.side1==self.side3 || self.side2 == self.side3)
            return :isosceles
        else
          return :scalene
    end
  end

  class TriangleError < StandardError
    def message
      "There are not valid sizes"
    end
  end
end
