array=Array.new()

print("Enter the number of rows")

r=gets.to_i

print("Enter the number of columns")

c=gets.to_i

print("Enter the matrix:")
print("\n")

for i in 0..r-1
    for j in 0..c-1
        print("Enter the Element [#{i}][#{j}] : ")
        a=gets.to_i
        if array.include?(a)
            array.push(0)
        else
            array.push(a)
        end
    end
end

puts "\nThe Matrix with no duplicates:"
puts "\n"

count=0
for i in 0..r-1
    for j in 0..c-1
        print(array[count]," ")
        count=count+1
    end
    puts(" ")
end
