print("Enter the number of players(N)")
N=gets.to_i

numbers=Array.new(N)
numbers.compact!
matches50=Array.new(N)
matches50.compact!
matches20=Array.new(N)
matches20.compact!
average=Array.new(N)
average.compact!
score=Array.new(N)
score.compact!
matches=Array.new(N)
matches.compact!
for i in 0..N-1
  print("Player: ",i+1," details\n")
  print("Enter Jersey Number: ")
  a=gets.to_i
  numbers.insert(i,a)
  print("Enter no of 50 over matches:")
  b=gets.to_i
  matches50.insert(i,b)
  print("Enter no of 20 over matches:")
  c=gets.to_i
  matches20.insert(i,c)
  print("Enter average:")
  d=gets.to_i
  average.insert(i,d)
  print("Highest score:")
  e=gets.to_i
  score.insert(i,e)
  a=matches50[i]
  b=matches20[i]
  c=a+b
  matches.insert(i,c)
end
print("\n Player with Highest Batting score is ",numbers[score.index(score.max)])
print("\n Player with more number of 50 over and 20 over matches together is: ",numbers[matches.index(matches.max)])
print("\n Players with batting average less than others are:")

a=average.sum/average.size.to_f
for i in 0..N-1
  if average[i]<a
    print(numbers[i])
  end
end

print("\n Player number who played less matches and have batting average>80")

a=matches.sum/matches.size.to_f

for i in 0..N-1
  if matches[i]<a and average[i]>80
    print(numbers[i])
  end
end
