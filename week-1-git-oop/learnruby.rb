class Human
  attr_accessor :name, :age, :location

  def initialize(name, age, location)
    @name     = name
    @age      = age
    @location = location
  end
end

class Engineer < Human
  def initialize(name, age, location, type)
    super(name, age, location)
    @type = type
  end

  def what_he_she_does
    if @type == 'civil'
      "Builds Bridges and Buildings"
    elsif @type == 'software'
      "Builds Software"
    end
  end

end