class Bear
  attr_reader :name, :stomach_contents

  def initialize(name)
    @name = name
    @stomach_contents = []
  end

  def catch(fish)
    @stomach_contents << fish
  end

  def food_count()
    return @stomach_contents.length()
  end

  def roar()
    return "RRROOOAAARRR"
  end



end
