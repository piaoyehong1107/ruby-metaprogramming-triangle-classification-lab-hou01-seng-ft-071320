class Triangle
  attr_accessor :first, :second, :third
  def initialize (first,second,third)
    @first=first
    @second=second
    @third=third
  end
  def kind 
    validate
    if (first == second && second == third)
      :equilateral
    elsif (first == second || second == third || first == third) 
     :isosceles
    else
      :scalene
    end
  end
  def validate
    raise TriangleError if (first + second < third) || (first + third < second)|| (second+third < first )
    # real_triangle = [(first + second > third), (first + third > second), (second+third>first )]
    # [first, second, third].each do |side|
    #   real_triangle << false if side <= 0 
    # raise TriangleError if real_triangle.include?(false)
    raise TriangleError if (first<=0 || second<=0 || third<=0) 
    end
	end
	
    
   class TriangleError < StandardError
	 end
end
