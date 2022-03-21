print "No of Mobile Users : "
n = gets.chomp.to_i
hash = Hash.new
for i in (0..n-1) do
    puts "Mobile User #{i+1} :"
    print("\tMobile No : ")
    mobile_no = gets.chomp
    print("\tUser Name : ")
    hash[mobile_no] = gets.chomp
end

mobile_no = hash.keys
airtel = Array.new
bsnl = Array.new
jio = Array.new

for i in mobile_no do
    if(i[0]=="9")
        airtel.push(i)
    elsif(i[0]=="8")
        bsnl.push(i)
    elsif(i[0]=="7" or i[0]=="6")
        jio.push(i)
    end
end
clear
puts "\nAirtel"
for i in airtel
    puts "\tMobile No : #{i}"
    puts "\tUser Name : #{hash[i]}\n"
end
puts "\nBSNL"
for i in bsnl
    puts "\tMobile No : #{i}"
    puts "\tUser Name : #{hash[i]}\n"
end
puts "\nJio"
for i in jio
    puts "\tMobile No : #{i}"
    puts "\tUser Name : #{hash[i]}\n"
end

temp = ""
if(airtel.count>bsnl.count)
    if airtel.count>jio.count
        temp = "Airtel"
    else
        temp = "Jio"
    end
else
    if bsnl.count>jio.count
        temp = "BSNL"
    else
        temp = "Jio"
    end
end

puts "\n\n#{temp} has the most no. of users."
