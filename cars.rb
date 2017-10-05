require 'set'

# Create an empty set named showroom.
showroom = Set.new()

# Add four of your favorite car model names to the set.
carsArr = [
	'Tempo',
	'Escort',
	'Taurus',
	'Nova'
]

carsArr.each do |car|
	showroom << car
end

# Print the length of your set.
puts showroom.length

# Pick one of the items in your show room and add it to the set again.
showroom << 'Tempo'

# Print your showroom. Notice how there's still only one instance of that model in there.
p showroom

# Add two more car models to your showroom with another set.
showroom2 = Set.new(['Infiniti', 'Highlander'])
showroom.merge showroom2
p showroom

# You've sold one of your cars. Remove it from the set.
showroom.delete('Tempo')
p showroom


# Now create another set of cars in a variable junkyard. Someone who owns a junkyard full of old cars has approached
# you about buying the entire inventory. In the new set, add some different cars, but also add a few that are the same
# as in the showroom set.
junkyard = Set.new(['Forerunner', 'Versa', 'Corolla', 'Coupe', 'Taurus', 'Nova'])

# Use the intersect? method to see which cars exist in both the showroom and that junkyard.
p showroom.intersection junkyard

# Now you're ready to buy the cars in the junkyard. Use the union method to combine the junkyard into your showroom.
p showroom.union junkyard

# Remove any cars that you acquired from the junkyard that you want in your showroom
junkyard.each do |car|
	unless showroom.include? car
		showroom << car
		junkyard.delete(car)
	end
end
p showroom
p junkyard



