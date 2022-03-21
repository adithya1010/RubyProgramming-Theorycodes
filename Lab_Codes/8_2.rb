def calculate_grade(mark)
    if mark>=90
        return "A"
    elsif mark>=80
        return "B"
    elsif mark>=70
        return "C"
    elsif mark>=60
        return "D"
    elsif mark>=50
        return "E"
    else
        return "F"
   end
end


print("No. of Students : ")
n = gets.chomp.to_i
hash = Hash.new
for i in (0..n-1) do
    puts "Studnet #{i+1}"
    print "\tName : "
    name = gets.chomp
    print("\tReg. No. : ")
    reg_no = gets.chomp
    mark = Array.new
    grade = Array.new
    puts "\tMarks"
    for j in (0..4) do
        print("\t\tMark #{j+1} : ")
        mark.push(gets.chomp.to_i)
        grade.push(calculate_grade(mark[j]))
    end
    hash[[reg_no, name]] = mark, grade
end

key = hash.keys
value = hash.values
for i in (0..n-1) do
    puts "Student #{i+1}"
    puts "\tName : #{key[i][1]}"
    puts "\tReg. No : #{key[i][0]}"
    puts "\tMarks"
    for j in (0..4) do
        puts "\t\tSubject #{j+1} : #{value[i][0][j]}"
    end
    puts "\tNo. of Subjects Failed : #{value[i][1].count("F")}"
end