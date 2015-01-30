class PezDispenser

	attr_accessor :currentAmtCandy,  :capacity, :name,
	
	def initialize(name)
		@name = name
		@currentAmtCandy = 0 
		@capacity = 10
	end

	def self.get_name
		return @name
	end

	def self.get_currentAmtCandy
		return @currentAmtCandy
	end

	def self.get_capacity
		return @capacity
	end

	def self.load
		@currentAmtCandy = @capacity
	end

	def add_Candy(number)
		if number >= 1 && @currentAmtCandy + number <= @capacity
			@currentAmtCandy += number
			return true
		else
			return false 
		end
	end

	def dispense
		if @currentAmtCandy > 0
			@currentAmtCandy -= 1
			return true
		else
			return false
		end
		
	end

	def to_string
		return "Pez Dispenser #{@name} contains #{@currentAmtCandy} candies"
	end

end

buzz = PezDispenser.new ("buzz")
p buzz.to_string

puts "loading one candy..."
buzz.add_Candy(1)
p buzz.to_string

puts "loading one candy..."
buzz.add_Candy(1)
p buzz.to_string

puts "dispensing one candy..."
buzz.dispense
p buzz.to_string


