Note:
In the RDS we will have to manually create Subnet group
for that we will have to choose at least two differect subnets from  different Avalibility Zones 

and then use 
db_subnet_group_name = "custome_db_subnet" 

to utilize your own custome VPC & subnets inside amazon RDS 
