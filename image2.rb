class Image

 def initialize(image)
   @image = image
 end

 def output_image
   @image.each do|array|
     array.each do |number|
       print number
     end
     puts
   end
 end


 def blur!
   ones = []
   @image.each_with_index do |rows, row|
       rows.each_with_index do |number, col|
          ones << [row, col] if number == 1
       end
   end
   ones.each do |row, col|
    
     @image[row-1][col]=1 if row-1 >= 0
     @image[row+1][col]=1 if row+1 < number_rows
     @image[row][col-1]=1 if col-1 >= 0
     @image[row][col+1]=1 if col+1 < number_cols
   end
 end

 def number_rows
   @image.length
 end

 def number_cols
   @image[0].length
 end



end

image = Image.new([
  [0, 0, 0, 0],
  [0, 1, 0, 0],
  [0, 0, 0, 1],
  [0, 0, 0, 0]
])
image.output_image
image.blur!
puts
image.output_image