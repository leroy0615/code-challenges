class Image1
	def initialize(image)
		@image= image
	end


	def output
		@image.each do|m|
			puts m.join(" ")
		end
	end
end

image = Image1.new([
  [0, 0, 0, 0],
  [0, 1, 0, 0],
  [0, 0, 0, 1],
  [0, 0, 0, 1],
  [0, 0, 0, 0]
])

image.output