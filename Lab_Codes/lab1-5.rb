puts("Enter the cost of one computer")
cost_one_pc=gets.to_i
puts("Enter the no of computers")
cost_no_pc=gets.to_i
cost_of_all_pc=cost_one_pc*cost_no_pc
puts("Cost of all computers:"+cost_of_all_pc.to_s)
puts("Enter No of tables")
tables=gets.to_i
puts("Enter the cost of one table")
cost_of_one_table=gets.to_i
puts("Enter the no of chairs")
no_of_chairs=gets.to_i
puts("Enter the cost of one chair")
cost_of_one_chair=gets.to_i
cost_of_furniture=(tables*cost_of_one_table)+(no_of_chairs*cost_of_one_chair)
puts("Cost of all furnitures"+cost_of_furniture.to_s)
puts("Enter no of hours worked")
no_of_hours_worked=gets.to_i
puts("Enter wages per hour")
wages_per_hour=gets.to_i
labour_cost=no_of_hours_worked+wages_per_hour
puts("The Labour cost is:"+labour_cost.to_s)
