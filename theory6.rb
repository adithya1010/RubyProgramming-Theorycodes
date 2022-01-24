str="this
is the sample"
puts str.chomp
str="sample program"
puts str.chop! #chop removes last character
str="sample program"
puts str.concat("works")#concat concatenates string with the given word in brackets
puts str.count("m") #count function counts the given character in the given string
str="sample program with sample input"
puts str.delete!("sam")#delete function deletes the given words in the entire string
puts str
str="SAMPLE program with sample input"
puts str.downcase()#downcase converts the uppercase characters in the string to lowercase
str="sample program with sample input"
puts str.index("sam")#index function returns the index at which the given word is present in the string
puts str.index("m",4)
puts str.reverse #reverse function reverses the given string
str="program with sample input"
puts str.ljust(40,"&")
puts str.slice(3...7)#slice function prints the value between the range
