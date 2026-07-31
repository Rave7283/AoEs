require("common");
local imgui = require("imgui");
local settings = require("settings");
local helpers = require("helpers");
local config = {};
local tabs = {"Settings", "Spells"};
local activeTab = tabs[1];

config.defaults = T{
    npcVisibilityMode = "None",
    pcVisibilityMode = "Party",
    spells = T{
        Ballad = T{
            enabled = true,
            color = 0x8000FF00,
            radius = 10,
        },
        Carol = T{
            enabled = true,
            color = 0x80996600,
            radius = 10,
        },
        Etude = T{
            enabled = false,
            color = 0x80998366,
            radius = 10,
        },
        Lullaby = T{
            enabled = true,
            color = 0x80FFFFFF,
            radius = 8,
        },
        Madrigal = T{
            enabled = true,
            color = 0x809933CC,
            radius = 10,
        },
        Mambo = T{
            enabled = true,
            color = 0x8000CC00,
            radius = 10,
        },
        March = T{
            enabled = true,
            color = 0x800099CC,
            radius = 10,
        },
        Mazurka = T{
            enabled = true,
            color = 0x80EFD94B,
            radius = 10,
        },
        Minne = T{
            enabled = true,
            color = 0x80CCCC00,
            radius = 10,
        },
        Minuet = T{
            enabled = true,
            color = 0x80CC3333,
            radius = 10,
        },
        Paeon = T{
            enabled = true,
            color = 0x800066CC,
            radius = 10,
        },
        Prelude = T{
            enabled = false,
            color = 0x80B8F3BD,
            radius = 10,
        },
        ["Other Buff"] = T{
            enabled = true,
            color = 0x80AAAAAA,
            radius = 10,
        },
        Heal = T{
            enabled = true,
            color = 0x80FFFFFF,
            radius = 10,
        },
        Damage = T{
            enabled = true,
            color = 0x80FF5B00,
            radius = 10,
        },
        Enfeeble = T{
            enabled = true,
            color = 0x80FFFFFF,
            radius = 10,
        },
        Protect = T{
            enabled = true,
            color = 0x8087CEEB,
            radius = 10,
        },
        Shell = T{
            enabled = true,
            color = 0x8032CD32,
            radius = 10,
        },
    }
};

local function drawSpells()
    if imgui.TreeNode("Spells") then
        local spellNames = {};
        for spellName in pairs(aoeSettings.spells) do
            table.insert(spellNames, spellName);
        end
        table.sort(spellNames);

        for _, spellName in ipairs(spellNames) do
            local spellSettings = aoeSettings.spells[spellName];
            if imgui.TreeNode(spellName) then
                -- Add a checkbox for enabling/disabling the spell
                imgui.AlignTextToFramePadding();
                imgui.Text("Show");
                imgui.SameLine();
                local enabled = { spellSettings.enabled };
                if imgui.Checkbox("##enabled" .. spellName, enabled) then
                    spellSettings.enabled = enabled[1];
                    settings:save();
                end

                imgui.SameLine();

                -- Add a color picker for the color
                imgui.AlignTextToFramePadding();
                imgui.Text("Color");
                imgui.SameLine();
                local color = helpers.unpackColor(spellSettings.color);
                local colorValue = { color.r, color.g, color.b, 1 };
                imgui.PushStyleColor(ImGuiCol_Button, colorValue);
                imgui.PushStyleColor(ImGuiCol_ButtonHovered, colorValue);
                imgui.PushStyleColor(ImGuiCol_ButtonActive, colorValue);
                imgui.PushStyleVar(ImGuiStyleVar_FramePadding, { 8, 4 });
                imgui.PushStyleVar(ImGuiStyleVar_ItemSpacing, { 6, 6 });
                if imgui.Button("  ##colorbutton" .. spellName) then
                    imgui.OpenPopup("ColorPicker##" .. spellName);
                end
                imgui.PopStyleVar(2);
                imgui.PopStyleColor(3);

                if imgui.BeginPopup("ColorPicker##" .. spellName) then
                    if imgui.ColorPicker4("##colorpicker", colorValue) then
                        spellSettings.color = helpers.packColor({
                            r = colorValue[1],
                            g = colorValue[2],
                            b = colorValue[3],
                            a = colorValue[4],
                        });
                        settings:save();
                    end
                    imgui.EndPopup();
                end

                imgui.SameLine();

                -- Add a slider for the radius
                imgui.AlignTextToFramePadding();
                imgui.Text("Radius");
                imgui.SameLine();
                local radius = { spellSettings.radius };
                imgui.SetNextItemWidth(100);
                if imgui.SliderInt("##radius" .. spellName, radius, 1, 30) then
                    spellSettings.radius = radius[1];
                    settings:save();
                end

                imgui.TreePop();
            end
        end

        imgui.TreePop();
    end
end

local function drawSettings()
    local visibilityLabels = { "None", "Party", "Alliance", "All" };

    --Show PC radio buttons
    local currentVisibility = aoeSettings.pcVisibilityMode or "Party";
    imgui.AlignTextToFramePadding();
    imgui.Text("Show PC actions from");
    imgui.SameLine();
    for _, label in ipairs(visibilityLabels) do
        local isSelected = (currentVisibility == label);
        if imgui.RadioButton(label .. "##pc", isSelected) then
            aoeSettings.pcVisibilityMode = label;
            settings:save();
        end
        imgui.SameLine();
    end
    imgui.NewLine();

    --Show NPC radio buttons
    local currentNpcVisibility = aoeSettings.npcVisibilityMode or "None";
    imgui.AlignTextToFramePadding();
    imgui.Text("Show NPC actions on");
    imgui.SameLine();
    for _, label in ipairs(visibilityLabels) do
        local isSelected = (currentNpcVisibility == label);
        if imgui.RadioButton(label .. "##npc", isSelected) then
            aoeSettings.npcVisibilityMode = label;
            settings:save();
        end
        imgui.SameLine();
    end

    imgui.NewLine();
    imgui.Separator();
end

config.draw = function()
    if (not showConfig[1]) then return end

    -- Set the initial window position and size for the first time the window is opened
    imgui.SetNextWindowPos({ 20, 20 }, ImGuiCond_FirstUseEver)
    imgui.SetNextWindowSize({ 450, 300 }, ImGuiCond_FirstUseEver)

    local configOpen = imgui.Begin("aoes - v" .. addon.version, showConfig, ImGuiWindowFlags_NoSavedSettings)
    if not configOpen then
        imgui.End();
        return;
    end

    drawSettings();
    drawSpells();

    imgui.End();
end

return config;