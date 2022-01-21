puts "Enter the number m"
m=gets.to_i
puts "Enter the number n"
n=gets.to_i
for i in 1..m
  for j in 1..n
    if (i==j) || (i+j==n+1)
      print("# ")
    elsif (i%2==0)
      print("& ")
    elsif (i%2==1)
      print("* ")

    end
  end
  puts()
end
