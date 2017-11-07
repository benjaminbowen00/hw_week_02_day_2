require("minitest/autorun")
require("minitest/rg")
require_relative("../river.rb")
require_relative("../fish.rb")
require_relative("../bear.rb")

class TestRiver < MiniTest::Test

  def setup
    @fish1 = Fish.new("Mack")
    @fish2 = Fish.new("Sally")
    @fish3 = Fish.new("Sol")
    @bear1 = Bear.new("Barney")
    @river1 = River.new("Amazon", [@fish1, @fish2, @fish3])
  end

  def test_river_name
    assert_equal("Amazon", @river1.name())
  end

  def test_river_contents
    assert_equal([@fish1, @fish2, @fish3], @river1.contents())
  end

  def test_lose_fish
    @river1.lose_fish(@fish1)
    assert_equal([@fish2, @fish3], @river1.contents)
  end

  def test_fish_count
    assert_equal(3, @river1.fish_count())
  end




end
