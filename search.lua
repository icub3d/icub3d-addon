function icub3d_Search_GetPlayer()
   -- Check to see if it's the first time being used.
   if icub3d_Search == nil then
	  icub3d_Search = {}
   end

   -- Check/Add Realm Name.
   local realm = GetRealmName()
   if icub3d_Search[realm] == nil then
	  icub3d_Search[realm] = {}
   end

   -- Check/Add Player
   player = GetUnitName("player")
   if icub3d_Search[realm][player] == nil then
	  icub3d_Search[realm][player] = {}
   end

   return icub3d_Search[realm][player]
end

function icub3d_Search_Search(search)
   local matches = {}
   for playerName, player in pairs(icub3d_Search[GetRealmName()]) do
	  for bagID, bag in pairs(player["bags"]) do
		 for slot, item in pairs(bag) do
			if string.match(item["name"], search) then
			   if matches[item["name"]] == nil then
				  matches[item["name"]] = {
					 ["link"] = item["link"],
					 ["players"] = {},
				  }
			   end

			   if matches[item["name"]]["players"][playerName] == nil then
				  matches[item["name"]]["players"][playerName] = 0
			   end
			   matches[item["name"]]["players"][playerName] = matches[item["name"]]["players"][playerName] + item["count"]
			end
		 end
	  end
   end

   for name, match in pairs(matches) do
	  icub3d_Print("%s", {match["link"]})
	  local total = 0
	  for player, count in pairs(match["players"]) do
		 total = total + count
		 icub3d_Print("  %s - %s", {icub3d_Search_FormatNumber(count), player})
	  end
	  icub3d_Print("  %s - Total", {icub3d_Search_FormatNumber(total)})
   end
end

function icub3d_Search_FormatNumber(n)
   n = math.floor(n)
   local r = ""
   local first = true
   while n > 0 do
	  local m = n % 1000
	  n = math.floor(n / 1000)
	  if not first then
		 r = "," .. r
	  end
	  r = string.format("%03d", m) .. r
	  first = false
   end
   return string.gsub(r, "^0+", "")
end

function icub3d_Search_ListMoney()
   local realm = GetRealmName()
   local tbl = icub3d_Search[realm]
   local total = 0
   for i, player in pairs(tbl) do
	  if player["money"] ~= nil then
		 local copper = player["money"]
		 total = total + copper
		 icub3d_Print("%s %sg %ds %dc",
					  {i, icub3d_Search_FormatNumber(copper / 100 / 100), (copper / 100) % 100, copper % 100})
	  end
   end
   icub3d_Print("Total %sg %ds %dc",
				{icub3d_Search_FormatNumber(total / 100 / 100), (total / 100) % 100, total % 100})
end

function icub3d_Search_UpdateMoney()
   local player = icub3d_Search_GetPlayer()
   player["money"] = GetMoney()
   icub3d_Debug("saved money: %s", {icub3d_Search[GetRealmName()][GetUnitName("player")]["money"]})
end

function icub3d_Search_UpdateBags()
   for bag = 0, NUM_BAG_SLOTS do
	  icub3d_Search_UpdateBag(bag)
   end
end

function icub3d_Search_UpdateBag(bag)
   local player = icub3d_Search_GetPlayer()
   if player["bags"] == nil then
	  player["bags"] = {}
   end
   player["bags"][bag] = {}
   local slots = GetContainerNumSlots(bag)

   for slot = 1, slots do
	  local texture, count, locked, quality, readable, lootable, link = GetContainerItemInfo(bag, slot)
	  if link ~= nil then
		 local name = icub3d_NameFromLink(link)
		 player["bags"][bag][slot] = {
			["name"] = name,
			["texture"] = texture,
			["count"] = count,
			["locked"] = locked,
			["quality"] = quality,
			["readable"] = readable,
			["lootable"] = lootable,
			["link"] = link,
		 }
	  end
   end
end

function icub3d_Search_BankFrameOpened()
   icub3d_Search_UpdateBag(BANK_CONTAINER)
   icub3d_Search_UpdateBag(REAGENTBANK_CONTAINER)
   
   -- Bank Slots Container
   for bag = NUM_BAG_SLOTS+1, NUM_BAG_SLOTS+NUM_BANKBAGSLOTS do
	  icub3d_Search_UpdateBag(bag)
   end
end

function icub3d_NameFromLink(link)
   for v in string.gmatch(link, "|h%[([^%)]*)%]|") do
	  return string.lower(v)
   end
end

-- This is run on login to make sure we pull the data at least once.
function icub3d_UpdateSearch()
   icub3d_Search_UpdateMoney()
   icub3d_Search_UpdateBags()
end

