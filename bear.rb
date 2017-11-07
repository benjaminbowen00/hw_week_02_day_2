class Bear
  attr_reader :name, :stomach_contents

  def initialize(name)
    @name = name
    @stomach_contents = []
  end

  def catch(fish, river)
    @stomach_contents << fish
    river.lose_fish(fish)
  end

  def food_count()
    return @stomach_contents.length()
  end

  def roar()
    return "RRROOOAAARRR"
  end



end
