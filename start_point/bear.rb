class Bear
  attr_reader :stomach
  def initialize(name)
    @name = name
    @stomach = []
  end

  def eat_a_fish(fish)
    @stomach << fish
  end

  def is_starving?()
    return @stomach.empty?()
  end

  def hunt_for_fish(river)
    eat_a_fish(river.fish_eaten) if river.fish_count > 0    
  end

  def hunt_for_many_fish(river,amount)
    amount.times { hunt_for_fish(river) }
  end

  def digest()
    @stomach.clear()
  end
end
