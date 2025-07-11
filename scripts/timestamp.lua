local mp = require 'mp'
local assdraw = require 'mp.assdraw'

mp.observe_property("time-pos", "number", function(name, value)
    if not value then return end

    local ass = assdraw.ass_new()
    ass:append("{\\an7}{\\fs20}{\\bord1}{\\shad0}")
    ass:append("{\\1c&HFFFFFF&}{\\3c&H000000&}")
    ass:append(string.format("Time: %.3f", value))
    mp.set_osd_ass(0, 0, ass.text)
end)
