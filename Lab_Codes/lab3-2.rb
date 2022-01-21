puts "Enter a number"
no=gets.to_i
length=no.size()
puts "The digits in reverse order are:"
for i in 1..length
  digit=no%10
  no=no/10
  puts digit
end
