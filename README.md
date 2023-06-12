## LuaStr
Libraries to make string manipulation easier in Lua


## Wiki

1. Capitalize
- Parameter Values: *No parameters*
- Example: The first character is converted to upper case, and the rest are converted to lower case
```lua
local txt = "hI MoM"

print(txt:capitalize())
-- Output: Hi mom
```

2. Center
- Parameter Values:

| Parameter | Description |
| -------- | ----------- |
| length | Required. The length of the returned string |
| character | Optional. The character to fill the missing space on each side. Default is " " (space) |

- Example: Using the letter "O" as the padding character
```lua
local txt = "banana"

print(txt:center(20, "O"))
-- Output: OOOOOOObananaOOOOOOO
```
