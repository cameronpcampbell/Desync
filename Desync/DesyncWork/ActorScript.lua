local RunEvent, ReturnEvent = script.Parent.RunEvent, script.Parent.ReturnEvent

RunEvent.Event:ConnectParallel(function(module, ...)
	task.synchronize()
	local reqModule = require(module)
	task.desynchronize()
	
	ReturnEvent:Fire(reqModule(...))
end)
