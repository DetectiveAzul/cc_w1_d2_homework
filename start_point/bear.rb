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
    if river.fish_count > 0
      eat_a_fish(river.fish_eaten)
    else
      return "The fish is in another castle"
    end
  end
end


# - A bear should be able to eat a fish from the river. Bear will have a
# function
#  ```hunt_for_fish( River )``` which takes a River pbject as an argument.
#  Inside it will check if there is any fish in the river, take the first
#  fish and bear will eat that fish
# - A river should lose a fish when a bear eats a fish
