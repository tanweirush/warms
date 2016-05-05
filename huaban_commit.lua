local cs = "hello lua"
local dir = "/root/Doc/bin/huaban"
-- local dir = "warms"

function makecommand( )
	local one = "cd " .. dir
	local two = string.format('git add .;git commit -m \"%s, add\";git push', os.date("%Y-%m-%d %H:%M:%S"))
	return one .. ";" .. two
end

function gitpush( )
	local cmd = makecommand()
	print(os.date("%Y-%m-%d %H:%M:%S"), " Do Command")
	local r = os.execute(cmd)
	print(r)
	print(os.date("%Y-%m-%d %H:%M:%S"))
end

gitpush()
