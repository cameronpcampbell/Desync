# Desync

Allows you to run a roblox module (that returns a function) in parallel.

- - -

# Example
script (Script).
```lua
local Desync = require(game:GetService("ReplicatedStorage").Desync)

local data = Desync(script.SumOf2Nums)(5,5)
print(data) -- PRINTS: 10
```

script.SumOf2Nums (ModuleScript).
```lua
return function(number1, number2)
    return number1 + number2
end
```

- - - 

# Changing the amount of initial actors
Behind the scenes Desync using a pool of `Actors`. When you run a ModuleScript through Desync it picks a random Actor to run from. The default amount of Actors that are initially created is 50, however if a ModuleScript is ran through Desync and no Actor is availible then a new Actor will be created.

To change the amount of Actors that are initially created then add a number Attribute called `InitialActors` to the Desync ModuleScript and set it accordingly.
