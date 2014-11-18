## The easy part
# Area = (1/2)nr^2 * sin(2pi/n)


def ip_caluclator(sides, r=1)
	inside = (Math::PI * 2)/sides
	solved = (0.5)*sides*(r**2)*Math.sin(inside)
	return solved
end

radius = 1
puts "Is it a unit circle?"
input = gets.chomp

if input[0].downcase != "y"
	puts "What is the radius of the circle?"
	radius = gets.chomp.to_i
end

puts "How many sides does the polygon have?"
	num_sides = gets.chomp.to_i

area = ip_caluclator(num_sides, radius)

puts "The approximate area is: #{area}"
