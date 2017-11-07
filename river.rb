class River
  attr_reader :name, :contents

  def initialize(name, contents)
    @name = name
    @contents = contents
  end

  def lose_fish(caught_fish)
    fish_to_be_removed = nil
    for fish in @contents
      if fish == caught_fish
        fish_to_be_removed = fish
      end
    end
    @contents.delete(fish_to_be_removed)
  end

  def fish_count()
    return @contents.length()
  end

end
