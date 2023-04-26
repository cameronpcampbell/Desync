local ActorPool = require(script.ActorPool)

local DesyncWork = script.DesyncWork


local ActorsFolder = Instance.new("Folder"); ActorsFolder.Name = "Actors"; ActorsFolder.Parent = DesyncWork
local BaseActor = Instance.new("Actor"); BaseActor.Name = "BaseActor"; BaseActor.Parent = DesyncWork

local RunEvent = Instance.new("BindableEvent"); RunEvent.Name = "RunEvent"; RunEvent.Parent = BaseActor
local ReturnEvent = Instance.new("BindableEvent"); ReturnEvent.Name = "ReturnEvent"; ReturnEvent.Parent = BaseActor

DesyncWork.ActorScript.Parent = BaseActor
DesyncWork.Parent = workspace

local Pool = ActorPool.new(BaseActor, ActorsFolder, 50)

return function(module)
	return function(...)
		return Pool:take(true):run(module, ...)
	end
end
