class Emp

    def initialize(id,name,desig)
        @id=id
        @name=name
        @desig=desig
    end
end
class Permanent < Emp

    def display(bp)
        @bp=bp
        @da=(@bp*15)/100
        @hra=8000
        @bonus=(@da*5)/100


        @gross_pay=@bp+@da+@hra+@bonus
        puts("Gross pay:#{@gross_pay}")
        @pf=(@gross_pay*2)/100
        @tax=1250
        @net_pay=@gross_pay-@pf-@tax

    end

    def display1()
         print("Permanent Employee:",@id,@name,@gross_pay,@desig)

    end
    def range(start,ending)
        if(@id>=start && @id<=ending)
            print ("Employee id #{@id},")
        end
    end


end

class Temporary < Emp

    def temporary_emp(salary_per_hour,total_hours)
        @salary_per_hour=salary_per_hour
        @total_hours=total_hours
        @total_salary=@salary_per_hour*@total_hours
        if(@total_salary>20000)
            puts("Employee id-> #{@id} : Employee name->#{@name} : Crossed more than 20000:#{@total_salary}")
        end

    end
end

print("Enter the number of Working employees in your company:")
n=gets.to_i #number of employees

array_perm=[]
array_temp=[]
for i in 0...n do
    print "Enter id #{i+1}:"
    sid=gets.to_i
    print "Enter employee name #{i+1}:"
    name=gets.to_s
    print "Enter employee designation #{i+1}:"
    desig=gets.to_s
    id=sid.to_s
    size=id.length
end
    if(id[0]=="5" && size==5)
       for i in 0...n do
        perm=Permanent.new(sid,name,desig)
        array_perm.push(perm)
        print "Enter basic pay#{i+1}:"
        bp=gets.to_i
        #array_perm[i].permanent_emp(bp)
        array_perm[i].display(bp)
        array_perm[i].display1()
       end

    elsif(id[0]=="1" && size==5)
        for i in 0...n do
        tempo=Temporary.new(sid,name,desig)
        array_temp.push(tempo)
        print "Enter total working hours #{i+1} :"
        total_hours=gets.to_i
        print "Enter salary per hour #{i+1} :"
        salary_per_hour=gets.to_i
        array_temp[i].temporary_emp(salary_per_hour,total_hours)
        end
    else
        print("Enter employee details correctly!!!")
    end
        puts ""
        print("Enter range starting id:")
        start=gets().to_i
        print("Enter range ending id:")
        ending=gets().to_i
        for i in  0...n do
            perm=Permanent.new(sid,name,desig)
            array_perm.push(perm)

            array_perm[i].range(start,ending)
        end
