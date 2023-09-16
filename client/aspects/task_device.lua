-- entering area
local function onEnter(self)
    print('entered zone', self.id)
end
 
local function onExit(self)
    print('exited zone', self.id)
end

local box = lib.zones.box({
    name = "property",
	coords = vec3(948.7, -519.15, 60.0),
	size = vec3(23.5, 26.0, 8.0),
	rotation = 300.25,
    debug = true,
    onEnter = onEnter,
    onExit = onExit
})