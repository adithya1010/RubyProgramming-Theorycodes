puts("Enter no of chickens,cows and pigs")
chickens=gets.to_i
cows=gets.to_i
pigs=gets.to_i
total_no_of_chickens=chickens*2
total_no_of_cows=cows*4
total_no_of_pigs=pigs*4
total_of_all_legs=total_no_of_chickens+total_no_of_cows+total_no_of_pigs
puts("Total no of legs:"+total_of_all_legs.to_s)
