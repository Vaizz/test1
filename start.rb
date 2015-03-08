
public

  def meters
    Length.new(self, :meter)
  end

  def miles
    Length.new(self, :miles)
  end

  def pounds
    Weight.new(self, :pounds)
  end


class Length

  def initialize(num, type)
    @num = num
    @type = type
  end

  def in(val)
    case @type
      when :meter
        if val == :miles
          @num * 0.000621371192
        elsif val == :inches
          @num * 39.3700787
        elsif val == :centimeters
          @num * 39.3700787
        else
          puts 'TypeMismatch'
        end
      when :miles
        if val == :meters
          @num * 1852
        elsif val == :inches
          @num * 63356.935951
        elsif val == :centimeters
          @num * 185200
        else
          puts 'TypeMismatch'
        end
    end

  end

end

class Weight < Length

  def in(val)
    case @type
      when :pounds
        if val == :gramms
          @num * 453.59237
        elsif val == :kilograms
          @num * 0.45359237
        elsif val == :ounces
          @num * 16.000002116438
        else
          puts 'TypeMismatch'
        end
    end
  end

end