class Human
  # attr_reader will only give us getter
  # attr_writer will only give us setter

  # attr_accessor will give us both setter and getter
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