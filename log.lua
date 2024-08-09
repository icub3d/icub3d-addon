local DEBUG = false

local class = select(2, UnitClass("player"))
local rgb = select(4, GetClassColor(class))

function ICUB3D_Debug(format, args)
   if args == nil then
      args = {}
   end
   for k, v in ipairs(args) do
      if type(v) == "table" then
         args[k] = DataDumper(v)
      end
   end
   if DEBUG == true then
      print(string.format("|c%sicub3d:|r " .. format, rgb, unpack(args)))
   end
end

function ICUB3D_Error(format, args)
   if args == nil then
      args = {}
   end
   for k, v in ipairs(args) do
      if type(v) == "table" then
         args[k] = DataDumper(v)
      end
   end
   print(string.format("|c%sicub3d:|r " .. format, rgb, unpack(args)))
end

function ICUB3d_Print(format, args)
   if args == nil then
      args = {}
   end
   for k, v in ipairs(args) do
      if type(v) == "table" then
         args[k] = DataDumper(v)
      end
   end
   print(string.format("|c%sicub3d:|r " .. format, rgb, unpack(args)))
end

function ICUB3d_String(format, args)
   if args == nil then
      args = {}
   end
   for k, v in ipairs(args) do
      if type(v) == "table" then
         args[k] = DataDumper(v)
      end
   end
   return string.format("|c%s" .. format .. "|r", rgb, unpack(args))
end
