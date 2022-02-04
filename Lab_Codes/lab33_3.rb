=begin

                            Online Ruby Compiler.
                Code, Compile, Run and Debug Ruby script online.
Write your code in this editor and press "Run" button to execute it.

=end

print("Enter no of columns")
c=gets.to_i
print("Enter no of Rows")
r=gets.to_i

array1=Array.new()
array2=Array.new()

#Getting Array 1

for i in 0..c-1
  for j in 0..r-1
    print("Enter element:[#{i}][#{j}]:")
    a1=gets.to_i
    array1.push(a1)
  end
end

#Getting Array 2
print("Enter Array 2:")
for i in 0..c-1
  for j in 0..r-1
    print("Enter element:[#{i}][#{j}]")
    a2=gets.to_i
    array2.push(a2)
  end
end

commonElements=Array.new()
for i in 0..(r*c)-1
  if array1.include?array2[i]
    commonElements.push(array2)
  end
end

print("\nNo. of Common Elements between Matrix 1 and Matrix 2 is #{commonElements.size.to_i} and they are : \n\t#{commonElements}")
