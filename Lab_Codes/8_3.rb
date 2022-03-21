require 'time'

print "No. of Students : "
n = gets.chomp.to_i
hash = Hash.new
for i in (0..n-1) do
    puts "Studnet #{i+1}"
    print "\tName : "
    name = gets.chomp
    print("\tReg. No. : ")
    reg_no = gets.chomp
    puts "\Date of Birth"
    print("\t\tDay : ")
    day = gets.chomp.to_i
    print("\t\tMonth : ")
    month = gets.chomp.to_i
    print("\t\tYear : ")
    year = gets.chomp.to_i
    dob = Date.parse("#{year}-#{month}-#{day}")
    hash[reg_no] = name, dob
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

puts "\n\nNames of Student based on their DoB in assending order : "
for i in value do
    puts "\t#{i[0]}"
end

puts "\nReg. No. of Student who born on Janauary : "
for i in (0..n-1) do
    if value[i][1].month == 1
        puts "\t#{key[i]}"
    end
end

puts "\nDoB of Students in each month"
for i in (1..12) do
    temp = []
    count = 0
    for j in (0..n-1) do
        if(i==value[j][1].month)
            temp.push(value[j][1])
            count += 1
        end
    end
    puts "\n\tMonth : #{i}"
    puts "\t\tCount : #{count}"
    for j in temp
        puts "\t\t#{j}"
    end
end
        