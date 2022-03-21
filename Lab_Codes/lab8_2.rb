def calculate(marks)
  if(marks>90)
    return "A"
  end
  if(marks>80)
    return "B"
  end
  if(marks>70)
    return "C"
  end
  if(marks>60)
    return "D"
  end
  if(marks>50)
    return "E"
  end
  if(marks<50)
    return "F"
  end
end

print("Enter No of students:")
n=gets.chomp.to_i
hash=Hash.new

for i in 0..n-1
  print("Student #{i+1}")
  print("\tReg No:")
  reg_no=gets.chomp
  print("\tName:")
  name=gets.chomp
  mark=Array.new
  grade=Array.new
  puts "\tMarks"
  for j in 0..4
    print("\t\tMark #{j+1}:")
    mark.push(gets.chomp.to_i)
    grade.push(calculate(mark[j]))
  end
  hash[[reg_no,name]]=mark,grade
end

keys=hash.keys
values=hash.values

for i in 0..n-1
  print("Student: #{i+1}")
  print("\tReg No: #{keys[i][0]}")
  print("\tName: #{keys[i][1]}")
  for j in 0..4
    print("\t\tSubject #{j+1} Mark is #{values[i][0][j]}")
  end
  print("\tNo of Subjects failed: #{values[i][1].count("F")}")
end
