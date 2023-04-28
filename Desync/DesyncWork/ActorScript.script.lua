local RunEvent, ReturnEvent = script.Parent.RunEvent, script.Parent.ReturnEvent

RunEvent.Event:Connect(function(module, ...)
	local reqModule = require(module)
	task.desynchronize()

	ReturnEvent:Fire(reqModule(...))
end)
