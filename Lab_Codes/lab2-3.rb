puts "Enter a number"
n1 = gets.chomp.to_i
puts "Enter a number"
n2= gets.chomp.to_i
a=n1
b=n2
if(n1 > n2)
a=n2
b=n1
end
while b%a != 0
temp = a
a = b%a
b = temp
end
print "Biggest Common Factor of #{n1} and #{n2} is #{b}"
print "Smallest Common Factor of #{n1} and #{n2} is #{a}"
