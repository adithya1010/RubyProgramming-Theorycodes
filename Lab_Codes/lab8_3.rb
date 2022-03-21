require 'time'

hash=Hash.new
print("Enter the number of records")
n=gets.chomp.to_i
for i in 0..n-1
  print("Enter the Reg No of #{i+1} record:")
  reg_no=gets.chomp.to_i
  print("Enter the Name of #{i+1} record:")
  name=gets.chomp.to_i
  print("Enter the date of birth #{i+1} record:")
  print("Enter the date:")
  date=gets.chomp.to_i
  print("Enter the month")
  month=gets.chomp.to_i
  print("Enter the year")
  year=gets.chomp.to_i
  dob=Date.parse("#{year}-#{month}-#{date}")
  hash[reg_no]=name,dob
end

key = hash.keys
value = hash.values
for i in (0..n-1) do
    for j in (i+1..n-1) do
        if(value[i][1]>value[j][1])
            temp1 = value[i]
            temp2 = key[i]
            value[i] = value[j]
            key[i] = key[j]
            value[j] = temp1
            key[j] = temp2
        end
    end
end

print("The names in ascending order of dob:")

for i in 0..n-1
  print("#{value[i]}")
end

print("Reg Nos who are born on Janauary")

for i in 0..n-1
  if(value[i][1].month=="1")
    print("\t#{key[i]}")
  end
end

print("\nNo of birthdays in each month:")

for i in 1..12
  temp=[]
  count=0
  for j in 0..n-1
    if(i==value[j][1].month)
      temp.push(value[j])
      count=count+1
    end
  end
  print("\tMonth: #{i}")
  print("\tCount: #{count}")
  for j in temp
    print("\t\t#{temp}")
  end
end
