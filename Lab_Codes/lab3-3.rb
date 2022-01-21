puts "Enter the number n"
n=gets.to_i
puts "Enter the number m"
m=gets.to_i
j=n
for i in 1..m
  term=j*10+n
  sum=sum+term
  j=term
end
puts sum
