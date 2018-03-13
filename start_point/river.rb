require_relative 'fish'

class River
  attr_reader :many_fish
  def initialize(name, many_fish=[])
    @name = name
    @many_fish = many_fish
    end

  def fish_count()
    return @many_fish.length
  end

  def fish_eaten()
    return @many_fish.shift
  end

  def a_fish_is_born(fish)
    @many_fish << Fish.new(fish)
  end
end
