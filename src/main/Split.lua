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

if not luaStrLoader then
  require("LuaStr/src/main/Loader")
end

--[[
@param string chars: characters you want to split
@param int maxSplit: the number of splits, the default is -1 means split all
@return table result: results after split
]]
function string:split(chars, maxSplit)
  if type(chars) ~= "string" then
    error("must be str, not " .. type(chars))
  end
  if chars == "" then
    error("empty chars")
  end
  if not maxSplit then
    maxSplit = -1
  end
  if maxSplit < 0 and maxSplit ~= -1 then
    error("must be greater than -2")
  end
  local result = {}
  local splitCount = 0
  local startF, endF = self:find(chars, 1, true)
  while startF do
    if splitCount >= maxSplit and maxSplit ~= -1 then
      break
    end
    table.insert(result, self:sub(1, (startF - 1)))
    self = self:sub((endF + 1))
    startF, endF = self:find(chars, 1, true)
    splitCount = (splitCount + 1)
  end
  table.insert(result, self)
  return result
end
