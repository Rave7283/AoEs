local drawCircle = require("drawCircle");
local helpers = {};

helpers.spells = T{
    ["Horde Lullaby"] = {type = "Lullaby", CastTime = 2},
    ["Horde Lullaby II"] = {type = "Lullaby", CastTime = 2},
    ["Army's Paeon"] = {type = "Paeon", CastTime = 8},
    ["Army's Paeon II"] = {type = "Paeon", CastTime = 8},
    ["Army's Paeon III"] = {type = "Paeon", CastTime = 8},
    ["Army's Paeon IV"] = {type = "Paeon", CastTime = 8},
    ["Army's Paeon V"] = {type = "Paeon", CastTime = 8},
    ["Army's Paeon VI"] = {type = "Paeon", CastTime = 8},
    ["Army's Paeon VII"] = {type = "Paeon", CastTime = 8},
    ["Army's Paeon VIII"] = {type = "Paeon", CastTime = 8},
    ["Mage's Ballad"] = {type = "Ballad", CastTime = 8},
    ["Mage's Ballad II"] = {type = "Ballad", CastTime = 8},
    ["Mage's Ballad III"] = {type = "Ballad", CastTime = 8},
    ["Knight's Minne"] = {type = "Minne", CastTime = 8},
    ["Knight's Minne II"] = {type = "Minne", CastTime = 8},
    ["Knight's Minne III"] = {type = "Minne", CastTime = 8},
    ["Knight's Minne IV"] = {type = "Minne", CastTime = 8},
    ["Knight's Minne V"] = {type = "Minne", CastTime = 8},
    ["Valor Minuet"] = {type = "Minuet", CastTime = 8},
    ["Valor Minuet II"] = {type = "Minuet", CastTime = 8},
    ["Valor Minuet III"] = {type = "Minuet", CastTime = 8},
    ["Valor Minuet IV"] = {type = "Minuet", CastTime = 8},
    ["Valor Minuet V"] = {type = "Minuet", CastTime = 8},
    ["Sword Madrigal"] = {type = "Madrigal", CastTime = 8},
    ["Blade Madrigal"] = {type = "Madrigal", CastTime = 8},
    --["Hunter's Prelude"] = {type = "Prelude", CastTime = 8},
    --["Archer's Prelude"] = {type = "Prelude", CastTime = 8},
    ["Sheepfoe Mambo"] = {type = "Mambo", CastTime = 8},
    ["Dragonfoe Mambo"] = {type = "Mambo", CastTime = 8},
    ["Honor March"] = {type = "March", CastTime = 8},
    ["Advancing March"] = {type = "March", CastTime = 8},
    ["Victory March"] = {type = "March", CastTime = 8},
    ["Sinewy Etude"] = {type = "Etude", CastTime = 8},
    ["Dextrous Etude"] = {type = "Etude", CastTime = 8},
    ["Vivacious Etude"] = {type = "Etude", CastTime = 8},
    ["Quick Etude"] = {type = "Etude", CastTime = 8},
    ["Learned Etude"] = {type = "Etude", CastTime = 8},
    ["Spirited Etude"] = {type = "Etude", CastTime = 8},
    ["Enchanting Etude"] = {type = "Etude", CastTime = 8},
    ["Herculean Etude"] = {type = "Etude", CastTime = 8},
    ["Uncanny Etude"] = {type = "Etude", CastTime = 8},
    ["Vital Etude"] = {type = "Etude", CastTime = 8},
    ["Swift Etude"] = {type = "Etude", CastTime = 8},
    ["Sage Etude"] = {type = "Etude", CastTime = 8},
    ["Logical Etude"] = {type = "Etude", CastTime = 8},
    ["Bewitching Etude"] = {type = "Etude", CastTime = 8},
    ["Fire Carol"] = {type = "Carol", CastTime = 8},
    ["Ice Carol"] = {type = "Carol", CastTime = 8},
    ["Wind Carol"] = {type = "Carol", CastTime = 8},
    ["Earth Carol"] = {type = "Carol", CastTime = 8},
    ["Lightning Carol"] = {type = "Carol", CastTime = 8},
    ["Water Carol"] = {type = "Carol", CastTime = 8},
    ["Light Carol"] = {type = "Carol", CastTime = 8},
    ["Dark Carol"] = {type = "Carol", CastTime = 8},
    ["Fire Carol II"] = {type = "Carol", CastTime = 8},
    ["Ice Carol II"] = {type = "Carol", CastTime = 8},
    ["Wind Carol II"] = {type = "Carol", CastTime = 8},
    ["Earth Carol II"] = {type = "Carol", CastTime = 8},
    ["Lightning Carol II"] = {type = "Carol", CastTime = 8},
    ["Water Carol II"] = {type = "Carol", CastTime = 8},
    ["Light Carol II"] = {type = "Carol", CastTime = 8},
    ["Dark Carol II"] = {type = "Carol", CastTime = 8},
    ["Chocobo Mazurka"] = {type = "Mazurka", CastTime = 8},
    ["Raptor Mazurka"] = {type = "Mazurka", CastTime = 8},
    ["Goddess's Hymnus"] = {type = "Other Buff", CastTime = 8},
    ["Sentinel's Scherzo"] = {type = "Other Buff", CastTime = 8},
    ["Fowl Aubade"] = {type = "Other Buff", CastTime = 8},
    ["Herb Pastoral"] = {type = "Other Buff", CastTime = 8},
    ["Shining Fantasia"] = {type = "Other Buff", CastTime = 8},
    ["Scop's Operetta"] = {type = "Other Buff", CastTime = 8},
    ["Puppet's Operetta"] = {type = "Other Buff", CastTime = 8},
    ["Gold Capriccio"] = {type = "Other Buff", CastTime = 8},
    ["Warding Round"] = {type = "Other Buff", CastTime = 8},
    ["Goblin Gavotte"] = {type = "Other Buff", CastTime = 8},

    ["Diaga"] = {type = "Enfeeble", CastTime = 8},
    ["Diaga II"] = {type = "Enfeeble", CastTime = 8},
    ["Diaga III"] = {type = "Enfeeble", CastTime = 8},
    ["Poisonga"] = {type = "Enfeeble", CastTime = 8},
    ["Poisonga II"] = {type = "Enfeeble", CastTime = 8},
    ["Sleepga"] = {type = "Enfeeble", CastTime = 8},
    ["Sleepga II"] = {type = "Enfeeble", CastTime = 8},
    ["Blindga"] = {type = "Enfeeble", CastTime = 8},
    ["Silencega"] = {type = "Enfeeble", CastTime = 8},
    ["Paralyzega"] = {type = "Enfeeble", CastTime = 8},
    ["Breakga"] = {type = "Enfeeble", CastTime = 8},
    ["Dispelga"] = {type = "Enfeeble", CastTime = 8},
    ["Slowga"] = {type = "Enfeeble", CastTime = 8},
    ["Bindga"] = {type = "Enfeeble", CastTime = 8},

    ["Protectra"] = {type = "Protect", CastTime = 8},
    ["Protectra II"] = {type = "Protect", CastTime = 8},
    ["Protectra III"] = {type = "Protect", CastTime = 8},
    ["Protectra IV"] = {type = "Protect", CastTime = 8},
    ["Protectra V"] = {type = "Protect", CastTime = 8},

    ["Shellra"] = {type = "Shell", CastTime = 8},
    ["Shellra II"] = {type = "Shell", CastTime = 8},
    ["Shellra III"] = {type = "Shell", CastTime = 8},
    ["Shellra IV"] = {type = "Shell", CastTime = 8},
    ["Shellra V"] = {type = "Shell", CastTime = 8},

    ["Barfira"] = {type = "Other Buff", CastTime = 1},
    ["Barblizzara"] = {type = "Other Buff", CastTime = 1},
    ["Barthundra"] = {type = "Other Buff", CastTime = 1},
    ["Barwatera"] = {type = "Other Buff", CastTime = 1},
    ["Barstonra"] = {type = "Other Buff", CastTime = 1},
    ["Baraera"] = {type = "Other Buff", CastTime = 1},
    ["Baramnesra"] = {type = "Other Buff", CastTime = 1},
    ["Barsleepra"] = {type = "Other Buff", CastTime = 1},
    ["Barpoisonra"] = {type = "Other Buff", CastTime = 1},
    ["Barparalyzra"] = {type = "Other Buff", CastTime = 1},
    ["Barblindra"] = {type = "Other Buff", CastTime = 1},
    ["Barsilencera"] = {type = "Other Buff", CastTime = 1},
    ["Barpetra"] = {type = "Other Buff", CastTime = 1},
    ["Barvira"] = {type = "Other Buff", CastTime = 1},

    ["Auspice"] = {type = "Other Buff", CastTime = 1},

    ["Curaga"] = {type = "Heal", CastTime = 8},
    ["Curaga II"] = {type = "Heal", CastTime = 8},
    ["Curaga III"] = {type = "Heal", CastTime = 8},
    ["Curaga IV"] = {type = "Heal", CastTime = 8},
    ["Curaga V"] = {type = "Heal", CastTime = 8},

    ["Cura"] = {type = "Heal", CastTime = 8},
    ["Cura II"] = {type = "Heal", CastTime = 8},
    ["Cura III"] = {type = "Heal", CastTime = 8},
    ["Esuna"] = {type = "Heal", CastTime = 8},

    ["Banishga"] = {type = "Damage", CastTime = 8},
    ["Banishga II"] = {type = "Damage", CastTime = 8},
    ["Banishga III"] = {type = "Damage", CastTime = 8},

    ["Stonega"] = {type = "Damage", CastTime = 8},
    ["Stonega II"] = {type = "Damage", CastTime = 8},
    ["Stonega III"] = {type = "Damage", CastTime = 8},
    ["Stoneja"] = {type = "Damage", CastTime = 8},
    ["Aeroga"] = {type = "Damage", CastTime = 8},
    ["Aeroga II"] = {type = "Damage", CastTime = 8},
    ["Aeroga III"] = {type = "Damage", CastTime = 8},
    ["Aeroja"] = {type = "Damage", CastTime = 8},
    ["Firaga"] = {type = "Damage", CastTime = 8},
    ["Firaga II"] = {type = "Damage", CastTime = 8},
    ["Firaga III"] = {type = "Damage", CastTime = 8},
    ["Firaja"] = {type = "Damage", CastTime = 8},
    ["Blizzaga"] = {type = "Damage", CastTime = 8},
    ["Blizzaga II"] = {type = "Damage", CastTime = 8},
    ["Blizzaga III"] = {type = "Damage", CastTime = 8},
    ["Blizzaja"] = {type = "Damage", CastTime = 8},
    ["Thundaga"] = {type = "Damage", CastTime = 8},
    ["Thundaga II"] = {type = "Damage", CastTime = 8},
    ["Thundaga III"] = {type = "Damage", CastTime = 8},
    ["Thundaja"] = {type = "Damage", CastTime = 8},
    ["Waterga"] = {type = "Damage", CastTime = 8},
    ["Waterga II"] = {type = "Damage", CastTime = 8},
    ["Waterga III"] = {type = "Damage", CastTime = 8},
    ["Waterja"] = {type = "Damage", CastTime = 8},
};

--Taken from https://github.com/Jyouya/Ashita-Stuff/tree/master/addons/songcast
local function getBone(actorPointer, bone)
    local x = ashita.memory.read_float(actorPointer + 0x678);
    local y = ashita.memory.read_float(actorPointer + 0x680);
    local z = ashita.memory.read_float(actorPointer + 0x67C);

    local skeletonBaseAddress = ashita.memory.read_uint32(actorPointer + 0x6B8);

    local skeletonOffsetAddress = ashita.memory.read_uint32(skeletonBaseAddress + 0x0C);

    local skeletonAddress = ashita.memory.read_uint32(skeletonOffsetAddress);

    local boneCount = ashita.memory.read_uint16(skeletonAddress + 0x32);

    local bufferPointer = skeletonAddress + 0x30;
    local skeletonSize = 0x04;
    local boneSize = 0x1E;

    local generatorsAddress = bufferPointer + skeletonSize + boneSize * boneCount + 4;

    return x + ashita.memory.read_float(generatorsAddress + (bone * 0x1A) + 0x0E + 0x0),
        y + ashita.memory.read_float(generatorsAddress + (bone * 0x1A) + 0x0E + 0x8),
        z + ashita.memory.read_float(generatorsAddress + (bone * 0x1A) + 0x0E + 0x4)
end

--Taken from https://github.com/Jyouya/targetlines
local function GetIndexFromId(id)
    local entMgr = AshitaCore:GetMemoryManager():GetEntity();

    --Shortcut for monsters/static npcs..
    if (bit.band(id, 0x1000000) ~= 0) then
        local index = bit.band(id, 0xFFF);
        if (index >= 0x900) then
            index = index - 0x100;
        end

        if (index < 0x900) and (entMgr:GetServerId(index) == id) then
            return index;
        end
    end

    for i = 1, 0x8FF do
        if entMgr:GetServerId(i) == id then
            return i;
        end
    end

    return 0;
end

local function shouldTrackAction(actorId, targetId)
    if (not actorId) then return false; end

    --NPC initiated
    if (bit.band(actorId, 0x1000000) ~= 0) then
        if (aoeSettings.npcVisibilityMode == "All") then
            return true;
        elseif (aoeSettings.npcVisibilityMode == "None") then
            return false;
        end

        local party = AshitaCore:GetMemoryManager():GetParty();
        for i = 0, 17 do
            local memberId = party:GetMemberServerId(i);
            if (memberId == targetId and (i < 6 or aoeSettings.npcVisibilityMode == "Alliance")) then
                return true;
            end
        end
    end

    --PC initiated
    if (aoeSettings.pcVisibilityMode == "All") then
        return true;
    elseif (aoeSettings.pcVisibilityMode == "None") then
        return false;
    end

    local party = AshitaCore:GetMemoryManager():GetParty();
    for i = 0, 17 do
        local memberId = party:GetMemberServerId(i);
        if (memberId == actorId and (i < 6 or aoeSettings.pcVisibilityMode == "Alliance")) then
            return true;
        end
    end

    return false;
end

helpers.drawCircles = function()
    local entity = AshitaCore:GetMemoryManager():GetEntity();

    for id, cast in pairs(casts) do
        if (cast.timeOut) < os.clock() then
            casts[id] = nil;
            return;
        end

        local targetPointer = entity:GetActorPointer(cast.target);
        local x, y, z = getBone(targetPointer, 0);
        local range = aoeSettings.spells[cast.spellInfo.type].radius or 10;
        local color = aoeSettings.spells[cast.spellInfo.type].color or bit.lshift((0x44 / 0xFF) * 0xFF, 24) + 0x777777;

        drawCircle(x, z, y, range, color, (os.clock() / 2) % 1);
    end
end

helpers.handleActionPacket = function(e)
    local type = ashita.bits.unpack_be(e.data_raw, 0, 82, 4);

    if (type ~= 8 and type ~= 4) then return; end

    local spellGroup = ashita.bits.unpack_be(e.data_raw, 0, 102, 16);    
    local actorId = ashita.bits.unpack_be(e.data_raw, 0, 40, 32);

    -- Finishes Casting
    if (type == 4) then
        casts[actorId] = nil;
        return;
    end
    
    -- Begins Casting
    if (type == 8) then
        --Check cancellation
        local actionId = ashita.bits.unpack_be(e.data_raw, 0, 86, 16);
        if (actionId == 28787) then
            casts[actorId] = nil;
            return;
        end

        local actionCount = ashita.bits.unpack_be(e.data_raw, 0, 182, 4);
        if (actionCount < 1) then return; end

        -- Get spell
        local spellId = ashita.bits.unpack_be(e.data_raw, 0, 213, 17);
        local spell = AshitaCore:GetResourceManager():GetSpellById(spellId);
        if (not spell) then return; end

        -- Get spell info
        local spellName = spell.Name[1];
        local spellInfo = helpers.spells[spellName];
        if (not spellInfo) then return; end

        --Check if spell tracking is enabled
        local spellTypeSettings = aoeSettings.spells[spellInfo.type];
        if (not spellTypeSettings or not spellTypeSettings.enabled) then
            return;
        end

        --Get target and check if it should be tracked
        local targetCount = ashita.bits.unpack_be(e.data_raw, 0, 72, 6);
        if (targetCount < 1) then return; end

        local targetId = ashita.bits.unpack_be(e.data_raw, 0, 150, 32)
        if (not shouldTrackAction(actorId, targetId)) then return; end

        local targetIndex = nil;
        targetIndex = GetIndexFromId(targetId);

        --Set cast info
        casts[actorId] = T {
            target = targetIndex,
            spellInfo = spellInfo,
            timeOut = os.clock() + spell.CastTime/4
        };
    end
end

helpers.unpackColor = function(colorValue)
    local a = bit.band(bit.rshift(colorValue, 24), 0xFF)
    local r = bit.band(bit.rshift(colorValue, 16), 0xFF)
    local g = bit.band(bit.rshift(colorValue, 8), 0xFF)
    local b = bit.band(colorValue, 0xFF)

    return {
        r = r / 255,
        g = g / 255,
        b = b / 255,
        a = a / 255,
    }
end

helpers.packColor = function(colorValue)
    return bit.lshift(math.floor((colorValue.a or 1) * 255 + 0.5), 24)
        + bit.lshift(math.floor((colorValue.r or 0) * 255 + 0.5), 16)
        + bit.lshift(math.floor((colorValue.g or 0) * 255 + 0.5), 8)
        + math.floor((colorValue.b or 0) * 255 + 0.5)
end

return helpers;
