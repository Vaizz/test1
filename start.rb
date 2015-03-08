
public

  def meters
    MyLength.new(self, :meter)
  end

  def miles
    MyLength.new(self, :miles)
  end


class MyLength

  def initialize(num, type)
    @num = num
    @type = type
  end

  def in(val)
    if @type == :miles
      @num * 0.000621371192
    else
      puts 'TypeMismatch'
    end
  end

end
