require 'minitest/autorun'
require 'minitest/rg'
require_relative '../bear'
require_relative '../fish'
require_relative '../river'

class BearTest < Minitest::Test
  def setup()
    @yogui = Bear.new("Yogui")

    fish1 = Fish.new("Salmon")
    fish2 = Fish.new("Tuna")
    fish3 = Fish.new("Mackerel")

    many_fish = [fish1, fish2, fish3]
    @guadalquivir = River.new("Guadalquivir", many_fish)
    @guadiana = River.new("Guadiana")
  end

  def test_eat_a_fish()
    @yogui.eat_a_fish(@guadiana.many_fish[0])
    @yogui.eat_a_fish(@guadiana.many_fish[1])
    assert_equal(2, @yogui.stomach.length)
  end

  def test_is_starving__returns_true()
    assert_equal(true,@yogui.is_starving?())
  end

  def test_is_starving__returns_false()
    @yogui.eat_a_fish(@fish1)
    @yogui.eat_a_fish(@fish2)
    assert_equal(false,@yogui.is_starving?())
  end

  def test_hunt_for_fish__success()
    @yogui.hunt_for_fish(@guadalquivir)
    @yogui.hunt_for_fish(@guadalquivir)
    assert_equal(false,@yogui.is_starving?())
    assert_equal(1,@guadalquivir.fish_count())
  end

  def test_hunt_for_fish__failure()
    assert_equal("The fish is in another castle",@yogui.hunt_for_fish(@guadiana))
  end

  def test_hunt_for_many_fish__enough_fishes
    @yogui.hunt_for_many_fish(@guadalquivir, 2)
    assert_equal(2,@yogui.stomach.length())
    assert_equal(1,@guadalquivir.fish_count())
  end

  def test_hunt_for_many_fish__empty_river
    @yogui.hunt_for_many_fish(@guadiana, 3)
    assert_equal(0,@yogui.stomach.length())
    assert_equal(true,@yogui.is_starving?())
  end


  def test_hunt_for_many_fish__not_enough_fishes
    @yogui.hunt_for_many_fish(@guadalquivir, 6)
    assert_equal(3,@yogui.stomach.length())
    assert_equal(0,@guadalquivir.fish_count())
  end

  def test_digest()
    @yogui.hunt_for_many_fish(@guadalquivir, 2)
    assert_equal(2,@yogui.stomach.length())
    @yogui.digest()
    assert_equal(true,@yogui.is_starving?())
  end

end
