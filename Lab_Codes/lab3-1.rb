puts "Enter 10 numbers"
sum=0
no2=0
for i in 1..10 do
    no1=gets.to_i
    sum=no1+no2
    no2=no1
    puts "The sum is "+sum.to_s
end
