class Bear
  attr_reader :stomach
  def initialize(name)
    @name = name
    @stomach = []
  end

  def eat_a_fish(fish)
    @stomach << fish if fish != nil
  end

  def is_starving?()
    return @stomach.empty?()
  end

  def hunt_for_fish(river)
    eat_a_fish(river.fish_eaten)
  end

  def hunt_for_many_fish(river,amount)
    amount.times { hunt_for_fish(river) }
  end

  def digest()
    @stomach.clear()
  end
end
