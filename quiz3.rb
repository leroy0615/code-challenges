class Dog
	attr_accessor :call, :age
	def initialize(call, age)
		
		@call = call
		@age = age
	end
end
dog =Dog.new(:mella, 10)
puts dog
puts dog.call
puts dog.age
