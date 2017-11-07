require("minitest/autorun")
require("minitest/rg")
require_relative("../bear.rb")
require_relative("../fish.rb")

class BearTest < MiniTest::Test

  def setup
    @bear1 = Bear.new("Barney")
    @fish1 = Fish.new("Mack")
    @fish2 = Fish.new("Sally")
  end


  def test_bear_name
    assert_equal("Barney", @bear1.name)
  end

  def test_bear_stomach_contents
    assert_equal([], @bear1.stomach_contents)
  end

  def test_catch
    @bear1.catch(@fish1)
    assert_equal([@fish1], @bear1.stomach_contents)
  end

  def test_food_count()
    assert_equal(0, @bear1.food_count())
    @bear1.catch(@fish1)
    assert_equal(1, @bear1.food_count())
  end

  def test_road
    assert_equal("RRROOOAAARRR", @bear1.roar())
  end






end
