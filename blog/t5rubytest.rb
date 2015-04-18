class Thermostat
	
	def initialize(temp)
		@temp = temp
		raise ArgumentError, 'An integer is required.' if @temp.is_a?(Integer) == false
	end

	def check_temp
		@average_temp = 65
		if @temp > @average_temp
			"Current temperature is too high."
		elsif @temp == @average_temp
			"Current temperature is average."
		else
			"Current temperature is too low."
		end 
	end
end

test = Thermostat.new(20)
p test.check_temp #=> "Current temperature is too low."

test2 = Thermostat.new(91)
p test2.check_temp  #=> "Current temperature is too high."

test3 = Thermostat.new(65)
p test3.check_temp #=> "Current temperature is average."