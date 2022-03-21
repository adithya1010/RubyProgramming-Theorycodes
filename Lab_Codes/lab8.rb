print("No of Mobile Users:")
n=gets.chomp.to_i
hash=Hash.new
for i in 0..n-1
  print("Mobile User #{i+1}:")
  print("\tMobile No:")
  mobile_no=gets.chomp.to_i
  print("\tUser Name:")
  hash[mobile_no]=gets.chomp
end

mobile_no=hash.keys
airtel=Array.new
bsnl=Array.new
jio=Array.new

for i in mobile_no do
  if(i[0]=="9")
    airtel.push(i)
  end
  if(i[0]=="8")
    bsnl.push(i)
  end
  if(i[0]=="7" or i[0]=="6")
    jio.push(i)
  end
end

print("\nAirtel")
for i in airtel
  print("\tMobile no: #{i}")
  print("\tUser: #{hash[i]}\n")
end
print("\nBSNL")
for i in bsnl
  print("\tMobile no: #{i}")
  print("\tUser: #{hash[i]}\n")
end
print("\nJio")
for i in jio
  print("\tMobile no:")
  print("\tUser:")
end

temp=""
if(airtel.count>bsnl.count)
  if airtel.count>jio.count
    temp="airtel"
  else
    temp="jio"
  end
else
  if(bsnl.count>jio.count)
    temp="BSNL"
  else
    temp="Jio"
  end
end
print("\n\n#{temp} has the most no of users")
