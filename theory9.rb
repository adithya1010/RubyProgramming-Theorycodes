print("\n No of Students:")
n=gets.chomp.to_i
hash=Hash.new
for i in 0..n
  puts("Reg No:")
  reg_no=gets.chomp
  puts("Language")
  hash[reg_no]=gets.chomp
end
keys=hash.keys
values=hash.values
print("Ruby Expert")

for i in 0...n
  if(values[i]=="Ruby" or values[i]=="ruby")
    print("#{keys[i]}")
  end
end

reg_no=values.uniq
count=0
for i in 0..n
  for j in 0..n
    if(values[j]==reg_no[i])
      count=count+1
    end
  end
  print("\n #{reg_no[i]} \n #{count}")
end
