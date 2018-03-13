require 'minitest/autorun'
require 'minitest/rg'
require_relative '../fish'
require_relative '../river'

class BearTest < Minitest::Test
  def setup()
    fish1 = Fish.new("Salmon")
    fish2 = Fish.new("Strout")
    fish3 = Fish.new("Mackerel")
    many_fish = [fish1, fish2, fish3]
    @guadalquivir = River.new("Guadalquivir", many_fish)

  end

  def test_fish_count()
    assert_equal(3, @guadalquivir.fish_count())
  end
end
