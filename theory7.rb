a=[3,5.6,"sample",[2,3,5]]
puts a #prints one line after another
print a #prints everything in one line

a= Array.new
a[0]=56
a[1]=78
print a.length #prints the array length

exm=Array("a"..."z") #intializing array with a to z characters
puts exm #prints one line after another
puts "#{exm}" #prints everything in one line

days=["Mon","Tue","Wed","Thu"]
puts days[0]

a=[23,45,67]
puts a.fetch(10,"sorry not found")
puts a.take(2)#prints first two elements
