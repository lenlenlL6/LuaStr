function string:capitalize()
  if self:len() == 0 then
    return ""
  end
  self = self:lower()
  return self:sub(1, 1):upper() .. self:sub(2)
end

function string:center(length, character)
  if not character or character == "" then
    character = " "
  end
  if length <= self:len() then
    return self
  end
  local newStr = ""
  newStr = newStr .. character:rep(math.ceil((length - self:len()) / 2))
  newStr = newStr .. self
  newStr = newStr .. character:rep(length - math.ceil((length - self:len()) / 2) - self:len())
  return newStr
end

function string:count(value, start, end_)
  if not start or start <= 0 then
    start = 1
  end
  if not end_ or end_ > self:len() then
    end_ = self:len()
  end
  self = self:sub(start, end_)
  return table.pack(self:gsub(value, ""))[2]
end

function string:endsWith(value, start, end_)
  if not start or start <= 0 then
    start = 1
  end
  if not end_ or end_ > self:len() then
    end_ = self:len()
  end
  self = self:sub(start, end_)
  local fS, fE = self:find(value, 0, true)
  if fE == self:len() then
    return true
  end
  return false
end

function string:expandTabs(tabsize)
  if not tabsize or tabsize < 0 then
    tabsize = 8
  end
  return table.pack(self:gsub("\t", string.rep(" ", tabsize)))[1]
end

function string:isAlNum()
  if self:match("%w+") == self then
    return true
  end
  return false
end

function string:isAlpha()
  if self:match("%a+") == self then
    return true
  end
  return false
end

function string:isDecimal()
  if self:match("%d+") == self then
    return true
  end
  return false
end

function string:isLower()
  return self == self:lower() and self ~= self:upper()
end

function string:isUpper()
  return self ~= self:lower() and self == self:upper()
end

function string:isSpace()
  if self:len() == 0 then
    return false
  end
  if self:match("[^ ]") then
    return false
  end
  return true
end

function string:isTitle()
  for i in self:gmatch("%a+") do
    if not i:match("%u%l*") then
      return false
    end
  end
  return true
end

function string:ljust(length, character)
  if length <= self:len() then
    return self
  end
  if not character or character == "" then
    character = " "
  end
  return self .. string.rep(character, length - self:len())
end

function string:strip(characters)
  if not characters or characters == "" then
    characters = " "
  end
  local fS, fE = self:find("[" .. characters .. "]+")
  if fS == 1 then
    self = self:sub(fE + 1):reverse()
  else
    self = self:reverse()
  end
  fS, fE = self:find("[" .. characters .. "]+")
  if fS == 1 then
    self = self:sub(fE + 1):reverse()
  else
    self = self:reverse()
  end
  return self
end

function string:partition(value)
  local fS, fE = self:find(value)
  if not fS then
    return {self, "", ""}
  end
  local d = nil
  if fS == 1 then
    d = "first"
  end
  if fS > 1 then
    d = "mid"
  end
  if fE == self:len() then
    d = "end"
  end
  if d == "first" then
    return {"", value, self:sub(fE + 1)}
  end
  if d == "mid" then
    return {self:sub(1, fS - 1), value, self:sub(fE + 1)}
  end
  if d == "end" then
    return {self:sub(1, fE), value, ""}
  end
end

function string:split(separator, maxSplit)
  if not maxSplit or maxSplit == 0 then
    maxSplit = -1
  end
  if not separator or separator == "" then
    separator = " "
  end
  local result = {}
  for i in self:gmatch("[^" .. separator .. "]+") do
    if maxSplit == 0 then
      break
    end
    table.insert(result, i)
    maxSplit = maxSplit - 1
  end
  return result
end

function string:startsWith(value, start, end_)
  if not start or start <= 0 then
    start = 1
  end
  if not end_ or end_ > self:len() then
    end_ = self:len()
  end
  self = self:sub(start, end_)
  local fS, fE = self:find(value)
  if fS == 1 then
    return true
  end
  return false
end