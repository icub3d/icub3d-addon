local DEBUG = true

function icub3d_Debug(format, args)
   if args == nil then
	  args = {}
   end
   for k,v in ipairs(args) do
	  if type(v) == "table" then
		 args[k] = DataDumper(v)
	  end
   end
   if DEBUG == true then
	  print(string.format("|cFFFF7D0Aicub3d:|r " .. format, unpack(args)))
   end
end

function icub3d_Error(format, args)
   if args == nil then
	  args = {}
   end
   for k,v in ipairs(args) do
	  if type(v) == "table" then
		 args[k] = DataDumper(v)
	  end
   end
   print(string.format("|cFFFF0000icub3d:|r " .. format, unpack(args)))
end


function icub3d_Print(format, args)
   if args == nil then
	  args = {}
   end
   for k,v in ipairs(args) do
	  if type(v) == "table" then
		 args[k] = DataDumper(v)
	  end
   end
   print(string.format("|cFF8787EDicub3d:|r " .. format, unpack(args)))
end
