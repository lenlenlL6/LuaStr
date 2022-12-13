## LuaStr
Libraries to make string manipulation easier in Lua

## Split string
```lua
require("LuaStr/src/main/Loader")

test = "hi.mom"

for i in ipairs(test:split(".")) do
  print(i)
end
```
## Without Downloading
```lua
-- lua cURL
loadstring(curl.easy{
    url = 'url',
    httpheader = {
      "X-Test-Header1: Header-Data1",
      "X-Test-Header2: Header-Data2",
    },
    writefunction = io.stderr -- use io.stderr:write()
  }
  :perform():close())()
