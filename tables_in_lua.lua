--In Lua table index start with 1
local towerLocation = {"TOWER_1", "TOWER_2", "TOWER_3", "TOWER_4", "TOWER_5"};

--The index can be changed to start with 0
local towerLocationZeroIndex = {[0]="TOWER_0", "TOWER_1", "TOWER_2", "TOWER_3", "TOWER_4"};

local scrollZeroIndex = {[0]="SCROLL_0", "SCROLL_1", "SCROLL_2", "SCROLL_3", "SCROLL_4"};

local creepZeroIndex = {[0]="CREEP_0", "CREEP_1", "CREEP_2", "CREEP_3", "CREEP_4"};

local validUnitType = {["tower"]=true, ["scroll"]=true, ["creep"]=true};
local tableOfUnit = {["tower"]=towerLocationZeroIndex, ["scroll"]=scrollZeroIndex, ["creep"]=creepZeroIndex};

function getTower(index)
	local tower = towerLocation[index];
	print("Tower at Location is ", index, tower);
	return tower;
end

function getTowerZeroIndex(index)
	local tower = towerLocationZeroIndex[index];
	print("Tower at Location is ", index, tower);
	return tower;
end


function listAllTowers()
	for k,v in pairs(towerLocation) do
		print("Tower Key, Val ", k,v);
	end
end

--When accessing by table.name <==> table["name"]
function accessTableOfTable(unitType, index)	
	local unitName = nil;
	if validUnitType[unitType] then
		unitName = tableOfUnit[unitType][index];
		print("Val Name ", validUnitType.tower);
		print("Access using table of tables UnitType, Index, UnitName", unitType, index, unitName);
	else
		print("InValid Unit Name");
	end
	return unitName;
end


