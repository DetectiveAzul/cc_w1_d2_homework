# Ecosystems


## Bears, River, Fish

We are going to build a small ecosystem! We want to create an ecosystem made up of 3 parts: bears, river and fish. You will need a class for each of these. From this you can make instances and build your ecosystem.

### MVP

- A river should have a name e.g. "Amazon"
- A river should have many fish
- A fish should have a species e.g. "Trout"
- A bear should have a name e.g. "Yogi"
- A bear should initially have an empty stomach which can fit some fish ( maybe an array? )
- A bear have a method ```eat_a_fish( Fish )``` which takes a Fish object and puts it in bear's stomach

### MLP

- A river has a method ```fish_count()``` which returns a number of fish in it
- A bear has a method ```is_starving?()``` which checks if bear's stomach is empty
- A bear should be able to eat a fish from the river ```hunt_for_fish( River )``` which will check if there is any fish in the river, take the first fish and eat that fish
- A river should lose a fish when a bear eats a fish

### Extensions

- A bear have a method ```hunt_for_many_fish( River, fish_count )``` which takes an array of Fish objects and puts it in bear's stomach
- bear should be able to only eat fish if they are in the river
- A river has a method ```a_fish_is_born( String )``` which will take a String which will become newborn fish's name
- A bear has a method digest() which will empty it's stomach
