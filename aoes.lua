addon.name    = "aoes";
addon.author  = "Rave";
addon.version = "0.0";
addon.desc    = "Draws area of effect circles.";

require("common");
local settings = require("settings");
local config = require("config"); 
local helpers = require("helpers");

showConfig = {false};
aoeSettings = T{};
casts = T{};

ashita.events.register("load", "load_handler", function()
    aoeSettings = settings.load(config.defaults);
end)

ashita.events.register("command", "command_handler", function(e)
    local args = e.command:args();

    if args[1] == nil or args[1] ~= "/aoes" then
        return
    end

    showConfig[1] = not showConfig[1];
end)

ashita.events.register('d3d_present', 'd3d_present_handler', function ()
    config.draw();
    helpers.drawCircles();
end)

ashita.events.register('packet_in', 'action_tracker_cb', function(e)
    if (e.id == 0x0028) then
        helpers.handleActionPacket(e);
    end
end);