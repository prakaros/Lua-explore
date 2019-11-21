require("class_in_lua");

print_something();

a = Account:new();
a:addDetails("Monkey", "Male", "Jungle");
a:addDetails("Chimp", "FeMale", "Zoo");

a:deposit( 100);
a:showBalance();
a:showDetails();

a:withdraw( 50);
a:showBalance();

b = Account:new();
b:addDetails("Donkey", "Female", "City");
b:deposit(234);
b:showBalance();
b:showDetails();

b:withdraw(36);
b:showBalance();

a:addDetails("Gorrilla", "Male", "Mountain");
a:showDetails();

b:addDetails("Orangutan", "Mail", "Grassland");
b:showDetails();