 --Comment
 
function print_something()
	print("Hello World ");
end


Account = {};
function Account:new()
	local obj = {details = {name=0, gender = 0, address = 0}, numDetail=0, balance = 0}
	setmetatable(obj, self);
	self.__index = self;
	return obj;
end

function Account:addDetails(naam, gend, add)
	self.numDetail = self.numDetail +1;
	self.details[self.numDetail] = {name=naam, gender=gend, address=add};
end

function Account:deposit(amount)
	self.balance = self.balance + amount;
	print("Deposit Amount ", amount);
end

function Account:withdraw(amount)
	self.balance = self.balance - amount;
	print("Withdraw Amount ", amount);
end

function Account:showBalance()
	print("Current Balance ", self.balance);
end

function Account:showDetails()
	print("Num details ", self.numDetail);
	for i, v in ipairs(self.details) do
		print("Details:: ", i, v.name, v.gender, v.address);
	end
end





