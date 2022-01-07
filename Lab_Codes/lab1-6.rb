puts("Enter width and height of the rectangle")
width=gets.to_i
height=gets.to_i
puts("Enter the radius of the circle")
radius=gets.to_i
s=width*width+height*height
diagnol=Math.sqrt(s)
diameter=2*radius
if diameter>=diagnol
  puts("True")

else
  puts("False")
end
