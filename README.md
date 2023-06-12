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

4. EndsWith
- Parameter Values:

| Parameter | Description |
| --------- | ----------- |
| value | Required. The value to check if the string ends with |
| start | Optional. An Integer specifying at which position to start the search |
| end | Optional. An Integer specifying at which position to end the search |

- Example: Check if the string ends with the phrase "my world."
```lua
local txt = "Hello, welcome to my world."

print(txt:endsWith("my world."))
-- Output: true
```

5. ExpandTabs
- Parameter Values:
| Parameter | Description |
| tabsize | Optional. A number specifying the tabsize. Default tabsize is 8 |

- Example: See the result using difference tab sizes
```lua
local txt = "H\te\tl\tl\to"

print(txt)
-- Outout: H       e       l       l       o
print(txt:expandTabs())
-- Output: H        e        l        l        o
print(txt:expandTabs(2))
-- Output: H  e  l  l  o
print(txt:expandTabs(4))
-- Output: H    e    l    l    o
print(txt:expandTabs(10))
-- Output: H          e          l          l          o
```
