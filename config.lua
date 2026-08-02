require("common");
local imgui = require("imgui");
local settings = require("settings");
local helpers = require("helpers");
local config = {};
local tabs = {"Settings", "Spells"};
local activeTab = tabs[1];

config.defaults = T{
    npcVisibilityMode = 0,
    pcVisibilityMode = 1,
    pulseSpeed = 5,
    adjustedPulseSpeed = 2,
    spells = T{
        ["Aero"] = { 
            pcEnabled = true,
            npcEnabled = true,
            color = 0x80FF4000,
            radius = 10,
        },
        ["Aria"] = { 
            pcEnabled = true,
            npcEnabled = true,
            color = 0x809EA6CE,
            radius = 10,
        },
        ["Auspice"] = { 
            pcEnabled = true,
            npcEnabled = true,
            color = 0x80CE9595,
            radius = 10,
        },
        ["Ballad"] = { 
            pcEnabled = true,
            npcEnabled = true,
            color = 0x80009A00,
            radius = 10,
        },
        ["Banish"] = { 
            pcEnabled = true,
            npcEnabled = true,
            color = 0x80FF4000,
            radius = 10,
        },
        ["Barspell"] = { 
            pcEnabled = true,
            npcEnabled = true,
            color = 0x8092FA9D,
            radius = 10,
        },
        ["Bind"] = { 
            pcEnabled = true,
            npcEnabled = true,
            color = 0x80FF8000,
            radius = 10,
        },
        ["Blind"] = { 
            pcEnabled = true,
            npcEnabled = true,
            color = 0x80FFA200,
            radius = 10,
        },
        ["Blizzard"] = { 
            pcEnabled = true,
            npcEnabled = true,
            color = 0x80FF4000,
            radius = 10,
        },
        ["Boost"] = { 
            pcEnabled = true,
            npcEnabled = true,
            color = 0x80EE92FA, --TODO: Change to a better color
            radius = 10,
        },
        ["Break"] = { 
            pcEnabled = true,
            npcEnabled = true,
            color = 0x80FF0000,
            radius = 10,
        },
        ["Carol"] = { 
            pcEnabled = true,
            npcEnabled = true,
            color = 0x809B6600,
            radius = 10,
        },
        ["Cure"] = { 
            pcEnabled = true,
            npcEnabled = true,
            color = 0x809480FF,
            radius = 10,
        },
        ["Dia"] = { 
            pcEnabled = true,
            npcEnabled = true,
            color = 0x80FFA200,
            radius = 10,
        },
        ["Dirge"] = { 
            pcEnabled = true,
            npcEnabled = true,
            color = 0x80659A9B,
            radius = 10,
        },
        ["Dispel"] = { 
            pcEnabled = true,
            npcEnabled = true,
            color = 0x80FF8000,
            radius = 10,
        },
        ["Etude"] = { 
            pcEnabled = true,
            npcEnabled = true,
            color = 0x809B8365,
            radius = 10,
        },
        ["Fire"] = { 
            pcEnabled = true,
            npcEnabled = true,
            color = 0x80FF4000,
            radius = 10,
        },
        ["Hymnus"] = { 
            pcEnabled = true,
            npcEnabled = true,
            color = 0x80DEDD8C,
            radius = 10,
        },
        ["Lullaby"] = { 
            pcEnabled = true,
            npcEnabled = true,
            color = 0x80FFFFFF,
            radius = 8,
        },
        ["Madrigal"] = { 
            pcEnabled = true,
            npcEnabled = true,
            color = 0x809B33CF,
            radius = 10
        },
        ["Mambo"] = { 
            pcEnabled = true,
            npcEnabled = true,
            color = 0x8000CD00,
            radius = 10,
        },
        ["March"] = { 
            pcEnabled = true,
            npcEnabled = true,
            color = 0x80009ACD,
            radius = 10,
        },
        ["Mazurka"] = { 
            pcEnabled = true,
            npcEnabled = true,
            color = 0x80F8E44A,
            radius = 10,
        },
        ["Meteor"] = { 
            pcEnabled = false,
            npcEnabled = true,
            color = 0x80FF0000,
            radius = 30,
        },
        ["Minne"] = { 
            pcEnabled = true,
            npcEnabled = true,
            color = 0x80CFCD00,
            radius = 10,
        },
        ["Minuet"] = { 
            pcEnabled = true,
            npcEnabled = true,
            color = 0x80CF3331,
            radius = 10,
        },
        ["Other Song"] = { 
            pcEnabled = false,
            npcEnabled = false,
            color = 0x80808080,
            radius = 10,
        },
        ["Paeon"] = { 
            pcEnabled = true,
            npcEnabled = true,
            color = 0x800066CD,
            radius = 10,
        },
        ["Paralyze"] = { 
            pcEnabled = true,
            npcEnabled = true,
            color = 0x80FF8000,
            radius = 10,
        },
        ["Poison"] = { 
            pcEnabled = true,
            npcEnabled = true,
            color = 0x80FFA200,
            radius = 10,
        },
        ["Prelude"] = { 
            pcEnabled = true,
            npcEnabled = true,
            color = 0x80B9F4BE,
            radius = 10
        },
        ["Protect"] = { 
            pcEnabled = true,
            npcEnabled = true,
            color = 0x807AB7E4,
            radius = 10,
        },
        ["Refresh"] = { 
            pcEnabled = true,
            npcEnabled = true,
            color = 0x800FB404,
            radius = 10,
        },
        ["Scherzo"] = { 
            pcEnabled = true,
            npcEnabled = true,
            color = 0x809ACDCF,
            radius = 10,
        },
        ["Shell"] = { 
            pcEnabled = true,
            npcEnabled = true,
            color = 0x806EDB0B,
            radius = 10,
        },
        ["Silence"] = { 
            pcEnabled = true,
            npcEnabled = true,
            color = 0x80FF8000,
            radius = 10,
        },
        ["Sirvente"] = { 
            pcEnabled = true,
            npcEnabled = true,
            color = 0x80FF6663,
            radius = 10,
        },
        ["Sleep"] = { 
            pcEnabled = true,
            npcEnabled = true,
            color = 0x80FFFFFF,
            radius = 10,
        },
        ["Slow"] = { 
            pcEnabled = true,
            npcEnabled = true,
            color = 0x80FF8000,
            radius = 10,
        },
        ["Stone"] = { 
            pcEnabled = true,
            npcEnabled = true,
            color = 0x80FF4000,
            radius = 10,
        },
        ["Thunder"] = { 
            pcEnabled = true,
            npcEnabled = true,
            color = 0x80FF4000,
            radius = 10,
        },
        ["Water"] = { 
            pcEnabled = true,
            npcEnabled = true,
            color = 0x80FF4000,
            radius = 10,
        }
    }
};

local function drawSpells()
    imgui.Text("Spell Settings");

    -- Build a table of families and types
    local families = {};
    for _, spellInfo in pairs(helpers.spells) do
        local family = spellInfo.family;
        if (not families[family]) then
            families[family] = {};
        end

        local spellType = spellInfo.type;
        families[family][spellType] = true;
    end

    -- Sort family names
    local familyNames = {};
    for familyName in pairs(families) do
        table.insert(familyNames, familyName);
    end
    table.sort(familyNames);

    for _, familyName in ipairs(familyNames) do
        if imgui.TreeNode(familyName) then
            -- Sort type names
            local typeNames = {};
            for typeName in pairs(families[familyName]) do
                table.insert(typeNames, typeName);
            end
            table.sort(typeNames);

            -- Draw each type and its settings
            for _, typeName in ipairs(typeNames) do
                local spellSettings = aoeSettings.spells[typeName];

                if imgui.TreeNode(typeName) then
                    --Show PC checkbox
                    imgui.AlignTextToFramePadding();
                    imgui.Text("Show PC");
                    imgui.SameLine();
                    local enabled = { spellSettings.pcEnabled };
                    if imgui.Checkbox("##enabled" .. typeName, enabled) then
                        spellSettings.pcEnabled = enabled[1];
                        settings.save();
                    end

                    imgui.SameLine();

                    --Show NPC checkbox
                    imgui.AlignTextToFramePadding();
                    imgui.Text("Show NPC");
                    imgui.SameLine();
                    local enabledNpc = { spellSettings.npcEnabled };
                    if imgui.Checkbox("##enabledNpc" .. typeName, enabledNpc) then
                        spellSettings.npcEnabled = enabledNpc[1];
                        settings.save();
                    end

                    imgui.SameLine();

                    --Color Picker
                    imgui.AlignTextToFramePadding();
                    imgui.Text("Color");
                    imgui.SameLine();
                    local color = helpers.unpackColor(spellSettings.color);
                    local colorValue = { color.r, color.g, color.b, color.a };
                    local buttonColor = { color.r, color.g, color.b, 1 };
                    imgui.PushStyleColor(ImGuiCol_Button, buttonColor);
                    imgui.PushStyleColor(ImGuiCol_ButtonHovered, buttonColor);
                    imgui.PushStyleColor(ImGuiCol_ButtonActive, buttonColor);
                    imgui.PushStyleVar(ImGuiStyleVar_FramePadding, { 8, 4 });
                    imgui.PushStyleVar(ImGuiStyleVar_ItemSpacing, { 6, 6 });
                    if imgui.Button("##colorbutton" .. typeName) then
                        imgui.OpenPopup("##colorpickerpopup" .. typeName);
                    end
                    imgui.PopStyleVar(2);
                    imgui.PopStyleColor(3);

                    if imgui.BeginPopup("##colorpickerpopup" .. typeName, ImGuiWindowFlags_NoMove) then
                        if imgui.ColorPicker4("##colorpicker" .. typeName, colorValue, ImGuiColorEditFlags_AlphaBar + ImGuiColorEditFlags_AlphaPreviewHalf + ImGuiColorEditFlags_DisplayHex + ImGuiColorEditFlags_DisplayRGB + ImGuiColorEditFlags_PickerHueWheel) then
                            spellSettings.color = helpers.packColor({
                                r = colorValue[1],
                                g = colorValue[2],
                                b = colorValue[3],
                                a = colorValue[4],
                            });
                            settings.save();
                        end
                        imgui.EndPopup();
                    end

                    imgui.SameLine();

                    --Radius Slider
                    imgui.AlignTextToFramePadding();
                    imgui.Text("Radius");
                    imgui.SameLine();
                    local radius = { spellSettings.radius };
                    imgui.SetNextItemWidth(100);
                    if imgui.SliderInt("##radius" .. typeName, radius, 1, 30) then
                        spellSettings.radius = radius[1];
                        settings.save();
                    end

                    imgui.TreePop();
                end
            end

            imgui.TreePop();
        end
    end
end

local function drawSettings()
    
    imgui.Text("Global Filters");

    --Show PC radio buttons
    local currentVisibility = aoeSettings.pcVisibilityMode or 1;
    imgui.AlignTextToFramePadding();
    imgui.Indent()
    imgui.Text("Show PC actions from");
    imgui.SameLine();
    for label, value in pairs(helpers.filterTypes) do
        local isSelected = (currentVisibility == value);
        if imgui.RadioButton(label .. "##pc", isSelected) then
            aoeSettings.pcVisibilityMode = value;
            settings.save();
        end
        imgui.SameLine();
    end
    imgui.NewLine();

    --Show NPC radio buttons
    local currentNpcVisibility = aoeSettings.npcVisibilityMode or 0;
    imgui.AlignTextToFramePadding();
    imgui.Text("Show NPC actions on");
    imgui.SameLine();
    for label, value in pairs(helpers.filterTypes) do
        local isSelected = (currentNpcVisibility == value);
        if imgui.RadioButton(label .. "##npc", isSelected) then
            aoeSettings.npcVisibilityMode = value;
            settings.save();
        end
        imgui.SameLine();
    end

    --Pulse speed slider
    imgui.NewLine();
    imgui.AlignTextToFramePadding();
    imgui.Text("Circle pulse speed");
    imgui.SameLine();
    local pulseSpeed = { aoeSettings.pulseSpeed or 5 };
    imgui.SetNextItemWidth(300);
    if imgui.SliderInt("##pulseSpeed", pulseSpeed, 0, 11) then
        aoeSettings.pulseSpeed = pulseSpeed[1];
        if (pulseSpeed[1] == 0) then
            aoeSettings.adjustedPulseSpeed = 1000;
        else
            aoeSettings.adjustedPulseSpeed = 10 / pulseSpeed[1];
        end
        settings.save();
    end

    imgui.Unindent();
    imgui.NewLine();
    imgui.Separator();
end

local function constrainWindowSize()
    -- Only max height is constrained based on the display size
    local maxWindowHeight = 610;
    local ioData = imgui.GetIO();
    local sh = ioData.DisplaySize.y;

    if (sh < maxWindowHeight) then
        maxWindowHeight = sh - 20;
    end

    imgui.SetNextWindowSizeConstraints({ 470, 250 }, { 470, maxWindowHeight });
end

config.draw = function()
    if (not showConfig[1]) then return end

    -- Set the initial window position and size constraints
    imgui.SetNextWindowPos({ 10, 10 }, ImGuiCond_FirstUseEver)
    constrainWindowSize();

    local configOpen = imgui.Begin("aoes - v" .. addon.version, showConfig, ImGuiWindowFlags_NoSavedSettings + ImGuiWindowFlags_AlwaysAutoResize)
    if not configOpen then
        imgui.End();
        return;
    end

    drawSettings();
    drawSpells();

    imgui.End();
end

return config;