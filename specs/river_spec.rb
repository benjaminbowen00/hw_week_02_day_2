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





end
