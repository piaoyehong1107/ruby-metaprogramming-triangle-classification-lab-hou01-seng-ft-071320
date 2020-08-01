class Triangle
  attr_accessor :first, :second, :third
  def initialize (first,second,third)
    @first=first
    @second=second
    @third=third
  end
  def kind 
    if (@first == @second && @second == @third)
      return :equilateral
    elsif (@first == @second || @seond == @third)
      return :isosceles
    else
      return :scalene
    end
  end
    
   class PartnerError < StandardError
     if (@first + @second < @third || @second + @third <@first || @first + @third <@second)
      begin
		    raise TriangleError
		  rescue TriangleError => error
		 end
		 end
	 end
end
