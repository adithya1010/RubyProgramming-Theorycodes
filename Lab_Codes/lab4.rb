require 'date'
class AgeDifference

    @@count = 0
    @@l = []
    def initialize(n,d,m,y)
        @d = d
        @m = m
        @y = y
        @n = n
        @@count+=1
    end

    def calculate()
        date = Date.today.to_s
        @cd = date[8...10].to_i
        @cm = date[5...7].to_i
        @cy = date[0...4].to_i
        @dd = (@cd - @d).abs
        @dm = (@cm - @m).abs
        @dy = @cy - @y
        x = []
        x.push(@n)
        x.push(@dy)
        @@l.push(x)
    end

    def display()
        mon = ["Jan","Feb","Mar","Apr","May","Jun","Jul","Aug","Sep","oct","Nov","Dec"]
        puts("Name is #{@n}")
        puts("Current date is #{@cd}/#{@cm}/#{@cy}")
        puts("Date of birth is #{@d}/#{mon[@m-1]}/#{@y}")
        puts("The difference is #{@dy} years")
        puts()
    end

    def self.calculate()
        n = @@l.length
        cl = []
        max = 0
        name = ""
        for i in 0...n do
            if(max<@@l[i][1])
                max = @@l[i][1]
                name = @@l[i][0]
            end
        end
        dif = 0
        for i in 0...n do
            x = []
            x.push(@@l[i][0])
            for j in 0...n do
                if((@@l[i][1]-@@l[j][1]).abs == 1)
                    x.push(@@l[j][0])
                end
            end
            cl.push(x)
        end
        puts("The elder person among the given persons is #{name}")
        print("The closer age group members are #{cl}")
    end
end

d1 = AgeDifference.new("Adithya",28,5,2001)
d2 = AgeDifference.new("Bharath",25,8,2000)
d3 = AgeDifference.new("Saathvik",20,10,1999)
d4 = AgeDifference.new("Praveen",14,4,1970)
d4.calculate()
d1.calculate()
d1.display()

d2.calculate()
d2.display()
d3.calculate()
d3.display()
AgeDifference.calculate()
