puts "Enter the number n:"
n=gets.to_i;
puts "The factorials are:"
for i in 1..n do
    if(n%i==0)
        puts(i)
    end
end
