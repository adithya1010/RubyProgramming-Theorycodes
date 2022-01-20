puts "Enter a number:"
num = gets.chomp.to_i

for i in 1..num
    z=i
    for j in 1..(2*i-1)
        if (j <= i)
            print j
        else
            z = z-1
            print z
        end
    end
    puts
end
