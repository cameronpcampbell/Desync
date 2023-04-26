# Desync

Allows you to run a roblox module (that returns a function) in parallel.

# Example
script (Script).
```lua
local Desync = require(game:GetService("ReplicatedStorage").Desync)

local data = Desync(script.Example)(5,5)
print(data) -- 10
```

script.Example (ModuleScript).
```lua
return function(number1, number2)
    return number1 + number2
end
```
