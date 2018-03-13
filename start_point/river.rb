class River
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
end
