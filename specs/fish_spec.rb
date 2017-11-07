require("minitest/autorun")
require("minitest/rg")
require_relative("../fish.rb")

class TestFish < MiniTest::Test

  def setup
    @fish1 = Fish.new("Mack")
    @fish2 = Fish.new("Sally")
  end

  def test_fish_name
    assert_equal("Mack", @fish1.name)
  end


end
