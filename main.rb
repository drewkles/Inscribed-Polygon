# Inscribed Polygon Calculator
# by Andrew Elkins

require 'sinatra'

class IPcalculator
	attr_accessor :solved, :num_sides, :side_length
	def initialize(num_sides)
		@num_sides = num_sides.to_i
		calculate
	end

	# Formula for side (2 * cos[((n-2)* pi)/ (2 * n)]
	def side_length
		top = (@num_sides - 2) * Math::PI
		angle = top / (2 * @num_sides)
		@side_length = 2 * Math.cos(angle)
	end

	# Area = (1/2)nr^2 * sin(2pi/n)
	def calculate_area
			if @num_sides.is_a?(Fixnum) 
			angle = (Math::PI * 2)/@num_sides
			# add *(r**2) if you want radius
			solved = (0.5)*@num_sides*Math.sin(angle)
			@solved = solved
		end
	end
	def calculate
		side_length()
		calculate_area()
	end

end


get '/' do
	erb :index
end

post '/answer_page' do
	@the_answer = IPcalculator.new(params[:numSides])
	erb :answer_page
end


