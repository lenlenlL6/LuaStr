
--[[
  ██╗     ██╗   ██╗ █████╗ ███████╗████████╗██████╗ 
██║     ██║   ██║██╔══██╗██╔════╝╚══██╔══╝██╔══██╗
██║     ██║   ██║███████║███████╗   ██║   ██████╔╝
██║     ██║   ██║██╔══██║╚════██║   ██║   ██╔══██╗
███████╗╚██████╔╝██║  ██║███████║   ██║   ██║  ██║
╚══════╝ ╚═════╝ ╚═╝  ╚═╝╚══════╝   ╚═╝   ╚═╝  ╚═╝
     > LuaStr 0.0.1 ALPHA
     > by @lenlenlL6, @zaizooo
    
                                                  
]]

--[[
   @ addPrefix.prefix
   return prefix + string
]]
function addPrefix(string, prefix)
 return prefix..""..string
end
--[[
   @ removePrefix.prefix
   return prefix is removed input text
]]

function removePrefix(str, prefix)
 local f, g = string.find(str, prefix)
 return string.sub(str, 0, f-1)
end
--[[
   @ findPrefix.prefix
   return bool
]]
function divisionString(str)
 result = {}
 for j=1,string.len(str) do
  result[j] = string.sub(str, j, j)
  end
return result
end
--[[
   @layerInt.prefix
   return floor(k, m)
]]
function layerInt(n)
  if n >= 10^6 then
        return string.format("%.2fm", n / 10^6)
    elseif n >= 10^3 then
        return string.format("%.2fk", n / 10^3)
    else
        return tostring(n)
    end
end
