require 'minitest/autorun'
require 'minitest/rg'
require_relative '../bear'
require_relative '../fish'
require_relative '../river'

class BearTest < Minitest::Test
  def setup()
    @yogui = Bear.new("Yogui")

    @fish1 = Fish.new("Salmon")
    @fish2 = Fish.new("Strout")
    @fish3 = Fish.new("Mackerel")

    many_fish = [@fish1, @fish2, @fish3]
    @guadalquivir = River.new("Guadalquivir", many_fish)
    @guadiana = River.new("Guadiana")
  end

  def test_eat_a_fish()
    p "hola"
    @yogui.eat_a_fish(@fish1)
    @yogui.eat_a_fish(@fish2)
    assert_equal(2, @yogui.stomach.length)
  end

  def test_is_starving__returns_true()
    p "hola"
    assert_equal(true,@yogui.is_starving?())
  end

  def test_is_starving__returns_false()
    p "hola"
    @yogui.eat_a_fish(@fish1)
    @yogui.eat_a_fish(@fish2)
    assert_equal(false,@yogui.is_starving?())
  end

  def test_hunt_for_fish__success()
    p "hola"
    @yogui.hunt_for_fish(@guadalquivir)
    @yogui.hunt_for_fish(@guadalquivir)
    assert_equal(false,@yogui.is_starving?())
    assert_equal(1,@guadalquivir.fish_count())
  end

  def test_hunt_for_fish__failure()
    assert_equal("The fish is in another castle",@yogui.hunt_for_fish(@guadiana))
  end
end
