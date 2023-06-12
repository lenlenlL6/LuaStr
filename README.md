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

3. Count
- Parameter Values:

| Parameter | Description |
| --------- | ----------- |
| value | Required. A String. The string to value to search for |
| start | Optional. An Integer. The position to start the search. Default is 1 |
| end | Optional. An Integer. The position to end the search. Default is the end of the string |

- Example: Search from position 10 to 24
```lua
local txt = "I love apples, apple are my favorite fruit"

print(txt:count("apple", 10, 24))
-- Output: 1

```
