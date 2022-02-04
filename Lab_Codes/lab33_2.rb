print("\nNo. of Players : ")
m = gets.to_i
print("\nNo. of Matchs : ")
n = gets.to_i
arr = Array.new()
(0..m-1).each do |i|
print("\n\nPlayer #{i+1}\n\n")
temp1 = Array.new()
temp2 = Array.new()
print("\tPlayer No. : ")

temp1.push(gets.to_i)
(0..n-1).each do |j|
print("\tWickets in Match #{j+1} : ")
temp3 = gets.to_i
while(temp3>10)
print("\n\t\tWicket should not be greater than 10\n")
print("\tWickets in Match #{j+1} : ")
temp3 = gets.to_i
end
temp2.push(temp3)
end
avg = temp2.sum/temp2.size.to_f
temp1.push(temp2)
temp1.push(avg)
arr.push(temp1)
end
print("\n\nAverage Wicket taken by\n")
(0..m-1).each do |i|
print("\tPlayer #{i+1} : #{arr[i][2]}\n")
end
print("\n\nTotal no. of Wicket taken in\n")
(0..n-1).each do |i|
total = 0
(0..m-1).each do |j|
total = total + arr[j][1][i]
end
print("\tMatch #{i+1} : #{total}\n")
end
print("\n\nMax no. of Wicket taken in\n")
(0..n-1).each do |i|
max = -1
player = 0
(0..m-1).each do |j|
if(max<arr[j][1][i])
max = arr[j][1][i]
player = j
end
end
print("\tMatch #{i+1} : Player no. #{arr[player][0]}\n")
end
print("\n\nTotal Wicket taken by\n")
(0..m-1).each do |i|
print("\tPlayer #{i+1} (#{arr[i][0]}): #{arr[i][1].sum}\n")
end
