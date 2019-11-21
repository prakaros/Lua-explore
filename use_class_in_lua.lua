require("class_in_lua");

print_something();

a = Account:new();
a:addDetails("Pine", "Tree", "Mountain");
a:addDetails("Bamboo", "Sticks", "Forest");

a:deposit( 100);
a:showBalance();
a:showDetails();

a:withdraw( 50);
a:showBalance();

b = Account:new();
b:addDetails("Mango", "Fruit", "Garden");
b:deposit(234);
b:showBalance();
b:showDetails();

b:withdraw(36);
b:showBalance();

a:addDetails("Oak", "Wood", "Valley");
a:showDetails();

b:addDetails("Willow", "Branch", "Lowland");
b:showDetails();
