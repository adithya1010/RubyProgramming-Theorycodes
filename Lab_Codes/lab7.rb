class Student
  attr_accessor:reg_no,:name,:cat1,:cat2,:da1,:da2,:da3
  def initialize(reg_no,name,cat1,cat2,da1,da2,da3)

      @reg_no=reg_no
      @name=name
      @cat1=cat1
      @cat2=cat2
      @da1=da1
      @da2=da2
      @da3=da3
    end

    def display(i)
        print("The reg no of student #{i} is:#{reg_no}\n")
        print("The name of student #{i} is: #{name}\n")
        print("The CAT 1 mark of the student #{i} is: #{cat1}\n")
        print("The CAT 2 mark of the student #{i} is: #{cat2}\n")
        print("The DA 1 mark of the student #{i} is: #{da1}\n")
        print("The DA 2 mark of the student #{i} is: #{da2}\n")
        print("The DA 3 mark of the student #{i} is: #{da3}\n")
    end
    def internal()
      internal_marks=(cat1*0.15)+(cat2*0.15)+da1+da2+da3
    end
    def +(obj)
      cat1+obj.cat1
    end
    def /(obj)
      cat2+obj.cat2
    end
    def <(obj)
      cat1<obj.cat1
    end
    def >(obj)
      cat2<obj.cat2
    end

  end
print("Enter the number of students:\n")
n=gets.to_i
student=Array.new()
for i in 0...n
  print("Enter the details of student#{i}:\n")
  print("Reg No:\n")
  reg_no=gets.to_i
  print("Name:\n")
  name=gets.to_s
  print("CAT 1 Marks:\n")
  cat1=gets.to_i
  print("CAT 2 Marks:\n")
  cat2=gets.to_i
  print("DA 1 Marks:\n")
  da1=gets.to_i
  print("DA 2 Marks:\n")
  da2=gets.to_i
  print("DA 3 Marks:\n")
  da3=gets.to_i
  student.push(Student.new(reg_no,name,cat1,cat2,da1,da2,da3))
end
print("All Student Details:\n")
for i in 0...n
  student[i].display(i)
end

sum_cat1=0
sum_cat2=0

for i in 0...n
  sum_cat1=sum_cat1+student[i].cat1
  sum_cat2=sum_cat2+student[i].cat2
end

avg_cat1=sum_cat1.to_f/student.size
avg_cat2=sum_cat2.to_f/student.size

print("Average of CAT 1 is:#{avg_cat1}\n")
print("Average of CAT 2 is:#{avg_cat2}\n")

temp_cat1=0
temp_cat2=0

for i in 0...student.size
  if temp_cat1<student[i].cat1
    temp_cat1=student[i].cat1
  end
  if temp_cat2>student[i].cat2
    temp_cat2=student[i].cat2
  end
end

print("Person with Highest CAT 1 Mark is:\n")
for i in 0...student.size
  if temp_cat1==student[i].cat1
    print("Reg No: #{student[i].reg_no},Name: #{student[i].name},CAT 1 Marks:#{student[i].cat1}\n")
  end
end

print("Person with Highest CAT 2 Mark is:\n")
for i in 0...student.size
  if temp_cat2==student[i].cat2
    print("Reg No: #{student[i].reg_no},Name:#{student[i].name},CAT 2 Marks:#{student[i].cat2}\n")
  end
end
