local drawCircle = require("drawCircle");
local helpers = {};

helpers.spells = T{
    ["Horde Lullaby"] = {family = "Song", type = "Lullaby"},
    ["Horde Lullaby II"] = {family = "Song", type = "Lullaby"},
    ["Army's Paeon"] = {family = "Song", type = "Paeon"},
    ["Army's Paeon II"] = {family = "Song", type = "Paeon"},
    ["Army's Paeon III"] = {family = "Song", type = "Paeon"},
    ["Army's Paeon IV"] = {family = "Song", type = "Paeon"},
    ["Army's Paeon V"] = {family = "Song", type = "Paeon"},
    ["Army's Paeon VI"] = {family = "Song", type = "Paeon"},
    ["Army's Paeon VII"] = {family = "Song", type = "Paeon"},
    ["Army's Paeon VIII"] = {family = "Song", type = "Paeon"},
    ["Mage's Ballad"] = {family = "Song", type = "Ballad"},
    ["Mage's Ballad II"] = {family = "Song", type = "Ballad"},
    ["Mage's Ballad III"] = {family = "Song", type = "Ballad"},
    ["Knight's Minne"] = {family = "Song", type = "Minne"},
    ["Knight's Minne II"] = {family = "Song", type = "Minne"},
    ["Knight's Minne III"] = {family = "Song", type = "Minne"},
    ["Knight's Minne IV"] = {family = "Song", type = "Minne"},
    ["Knight's Minne V"] = {family = "Song", type = "Minne"},
    ["Valor Minuet"] = {family = "Song", type = "Minuet"},
    ["Valor Minuet II"] = {family = "Song", type = "Minuet"},
    ["Valor Minuet III"] = {family = "Song", type = "Minuet"},
    ["Valor Minuet IV"] = {family = "Song", type = "Minuet"},
    ["Valor Minuet V"] = {family = "Song", type = "Minuet"},
    ["Sword Madrigal"] = {family = "Song", type = "Madrigal"},
    ["Blade Madrigal"] = {family = "Song", type = "Madrigal"},
    ["Hunter's Prelude"] = {family = "Song", type = "Prelude"},
    ["Archer's Prelude"] = {family = "Song", type = "Prelude"},
    ["Sheepfoe Mambo"] = {family = "Song", type = "Mambo"},
    ["Dragonfoe Mambo"] = {family = "Song", type = "Mambo"},
    ["Honor March"] = {family = "Song", type = "March"},
    ["Advancing March"] = {family = "Song", type = "March"},
    ["Victory March"] = {family = "Song", type = "March"},
    ["Sinewy Etude"] = {family = "Song", type = "Etude"},
    ["Dextrous Etude"] = {family = "Song", type = "Etude"},
    ["Vivacious Etude"] = {family = "Song", type = "Etude"},
    ["Quick Etude"] = {family = "Song", type = "Etude"},
    ["Learned Etude"] = {family = "Song", type = "Etude"},
    ["Spirited Etude"] = {family = "Song", type = "Etude"},
    ["Enchanting Etude"] = {family = "Song", type = "Etude"},
    ["Herculean Etude"] = {family = "Song", type = "Etude"},
    ["Uncanny Etude"] = {family = "Song", type = "Etude"},
    ["Vital Etude"] = {family = "Song", type = "Etude"},
    ["Swift Etude"] = {family = "Song", type = "Etude"},
    ["Sage Etude"] = {family = "Song", type = "Etude"},
    ["Logical Etude"] = {family = "Song", type = "Etude"},
    ["Bewitching Etude"] = {family = "Song", type = "Etude"},
    ["Fire Carol"] = {family = "Song", type = "Carol"},
    ["Ice Carol"] = {family = "Song", type = "Carol"},
    ["Wind Carol"] = {family = "Song", type = "Carol"},
    ["Earth Carol"] = {family = "Song", type = "Carol"},
    ["Lightning Carol"] = {family = "Song", type = "Carol"},
    ["Water Carol"] = {family = "Song", type = "Carol"},
    ["Light Carol"] = {family = "Song", type = "Carol"},
    ["Dark Carol"] = {family = "Song", type = "Carol"},
    ["Fire Carol II"] = {family = "Song", type = "Carol"},
    ["Ice Carol II"] = {family = "Song", type = "Carol"},
    ["Wind Carol II"] = {family = "Song", type = "Carol"},
    ["Earth Carol II"] = {family = "Song", type = "Carol"},
    ["Lightning Carol II"] = {family = "Song", type = "Carol"},
    ["Water Carol II"] = {family = "Song", type = "Carol"},
    ["Light Carol II"] = {family = "Song", type = "Carol"},
    ["Dark Carol II"] = {family = "Song", type = "Carol"},
    ["Chocobo Mazurka"] = {family = "Song", type = "Mazurka"},
    ["Raptor Mazurka"] = {family = "Song", type = "Mazurka"},
    ["Foe Sirvente"] = {family = "Song", type = "Sirvente"},
    ["Adventurer's Dirge"] = {family = "Song", type = "Dirge"},
    ["Sentinel's Scherzo"] = {family = "Song", type = "Scherzo"},
    ["Goddess's Hymnus"] = {family = "Song", type = "Hymnus"},
    ["Aria of Passion"] = {family = "Song", type = "Aria"},
    ["Fowl Aubade"] = {family = "Song", type = "Other Song"},
    ["Herb Pastoral"] = {family = "Song", type = "Other Song"},
    ["Shining Fantasia"] = {family = "Song", type = "Other Song"},
    ["Scop's Operetta"] = {family = "Song", type = "Other Song"},
    ["Puppet's Operetta"] = {family = "Song", type = "Other Song"},
    ["Gold Capriccio"] = {family = "Song", type = "Other Song"},
    ["Warding Round"] = {family = "Song", type = "Other Song"},
    ["Goblin Gavotte"] = {family = "Song", type = "Other Song"},
    ["Cactuar Fugue"] = {family = "Song", type = "Other Song"},

    ["Sleepga"] = {family = "Enfeebling", type = "Sleep"},
    ["Sleepga II"] = {family = "Enfeebling", type = "Sleep"},
    ["Breakga"] = {family = "Enfeebling", type = "Break"},
    ["Silencega"] = {family = "Enfeebling", type = "Silence"},
    ["Paralyzega"] = {family = "Enfeebling", type = "Paralyze"},
    ["Diaga"] = {family = "Enfeebling", type = "Dia"},
    ["Diaga II"] = {family = "Enfeebling", type = "Dia"},
    ["Diaga III"] = {family = "Enfeebling", type = "Dia"},
    ["Poisonga"] = {family = "Enfeebling", type = "Poison"},
    ["Poisonga II"] = {family = "Enfeebling", type = "Poison"},
    ["Blindga"] = {family = "Enfeebling", type = "Blind"},
    ["Dispelga"] = {family = "Enfeebling", type = "Dispel"},
    ["Slowga"] = {family = "Enfeebling", type = "Slow"},
    ["Bindga"] = {family = "Enfeebling", type = "Bind"},

    ["Protectra"] = {family = "Enhancing", type = "Protect"},
    ["Protectra II"] = {family = "Enhancing", type = "Protect"},
    ["Protectra III"] = {family = "Enhancing", type = "Protect"},
    ["Protectra IV"] = {family = "Enhancing", type = "Protect"},
    ["Protectra V"] = {family = "Enhancing", type = "Protect"},
    ["Shellra"] = {family = "Enhancing", type = "Shell"},
    ["Shellra II"] = {family = "Enhancing", type = "Shell"},
    ["Shellra III"] = {family = "Enhancing", type = "Shell"},
    ["Shellra IV"] = {family = "Enhancing", type = "Shell"},
    ["Shellra V"] = {family = "Enhancing", type = "Shell"},
    ["Barfira"] = {family = "Enhancing", type = "Barspell"},
    ["Barblizzara"] = {family = "Enhancing", type = "Barspell"},
    ["Barthundra"] = {family = "Enhancing", type = "Barspell"},
    ["Barwatera"] = {family = "Enhancing", type = "Barspell"},
    ["Barstonra"] = {family = "Enhancing", type = "Barspell"},
    ["Baraera"] = {family = "Enhancing", type = "Barspell"},
    ["Baramnesra"] = {family = "Enhancing", type = "Barspell"},
    ["Barsleepra"] = {family = "Enhancing", type = "Barspell"},
    ["Barpoisonra"] = {family = "Enhancing", type = "Barspell"},
    ["Barparalyzra"] = {family = "Enhancing", type = "Barspell"},
    ["Barblindra"] = {family = "Enhancing", type = "Barspell"},
    ["Barsilencera"] = {family = "Enhancing", type = "Barspell"},
    ["Barpetra"] = {family = "Enhancing", type = "Barspell"},
    ["Barvira"] = {family = "Enhancing", type = "Barspell"},
    ["Auspice"] = {family = "Enhancing", type = "Auspice"},
    ["Refreshga"] = {family = "Enhancing", type = "Refresh"},
    ["Boost-STR"] = {family = "Enhancing", type = "Boost"},
    ["Boost-DEX"] = {family = "Enhancing", type = "Boost"},
    ["Boost-VIT"] = {family = "Enhancing", type = "Boost"},
    ["Boost-AGI"] = {family = "Enhancing", type = "Boost"},
    ["Boost-INT"] = {family = "Enhancing", type = "Boost"},
    ["Boost-MND"] = {family = "Enhancing", type = "Boost"},
    ["Boost-CHR"] = {family = "Enhancing", type = "Boost"},

    ["Curaga"] = {family = "Healing", type = "Cure"},
    ["Curaga II"] = {family = "Healing", type = "Cure"},
    ["Curaga III"] = {family = "Healing", type = "Cure"},
    ["Curaga IV"] = {family = "Healing", type = "Cure"},
    ["Curaga V"] = {family = "Healing", type = "Cure"},
    ["Cura"] = {family = "Healing", type = "Cure"},
    ["Cura II"] = {family = "Healing", type = "Cure"},
    ["Cura III"] = {family = "Healing", type = "Cure"},
    ["Esuna"] = {family = "Healing", type = "Cure"},

    ["Banishga"] = {family = "Damage", type = "Banish"},
    ["Banishga II"] = {family = "Damage", type = "Banish"},
    ["Banishga III"] = {family = "Damage", type = "Banish"},
    ["Stonega"] = {family = "Damage", type = "Stone"},
    ["Stonega II"] = {family = "Damage", type = "Stone"},
    ["Stonega III"] = {family = "Damage", type = "Stone"},
    ["Stoneja"] = {family = "Damage", type = "Stone"},
    ["Aeroga"] = {family = "Damage", type = "Aero"},
    ["Aeroga II"] = {family = "Damage", type = "Aero"},
    ["Aeroga III"] = {family = "Damage", type = "Aero"},
    ["Aeroja"] = {family = "Damage", type = "Aero"},
    ["Firaga"] = {family = "Damage", type = "Fire"},
    ["Firaga II"] = {family = "Damage", type = "Fire"},
    ["Firaga III"] = {family = "Damage", type = "Fire"},
    ["Firaja"] = {family = "Damage", type = "Fire"},
    ["Blizzaga"] = {family = "Damage", type = "Blizzard"},
    ["Blizzaga II"] = {family = "Damage", type = "Blizzard"},
    ["Blizzaga III"] = {family = "Damage", type = "Blizzard"},
    ["Blizzaja"] = {family = "Damage", type = "Blizzard"},
    ["Thundaga"] = {family = "Damage", type = "Thunder"},
    ["Thundaga II"] = {family = "Damage", type = "Thunder"},
    ["Thundaga III"] = {family = "Damage", type = "Thunder"},
    ["Thundaja"] = {family = "Damage", type = "Thunder"},
    ["Waterga"] = {family = "Damage", type = "Water"},
    ["Waterga II"] = {family = "Damage", type = "Water"},
    ["Waterga III"] = {family = "Damage", type = "Water"},
    ["Waterja"] = {family = "Damage", type = "Water"},
    ["Meteor"] = {family = "Damage", type = "Meteor"}
};

helpers.filterTypes = {
    ["None"] = 0,
    ["Party"] = 1,
    ["Alliance"] = 2,
    ["Everyone"] = 3,
}

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


local function shouldTrackAction(actorId, targetId, spellFamily, spellSettings)
    if (not actorId) then return false; end
    if (not targetId) then return false; end
    --Pianissimo/single target song check
    if (spellFamily == "Song" and actorId ~= targetId) then return false; end

    --NPC initiated
    if (bit.band(actorId, 0x1000000) ~= 0) then
        if (not spellSettings.npcEnabled) then
            return false;
        end

        local npcVisibilityMode = aoeSettings.npcVisibilityMode;
        if (npcVisibilityMode == 3) then
            return true;
        elseif (npcVisibilityMode == 0) then
            return false;
        end

        local party = AshitaCore:GetMemoryManager():GetParty();
        if (not party) then return false end
        local allowAlliance = npcVisibilityMode == 2;
        for i = 0, 17 do
            local memberId = party:GetMemberServerId(i);
            if (memberId == targetId and (allowAlliance or i < 6)) then
                return true;
            end
        end
    else --PC initiated  
        if (not spellSettings.pcEnabled) then
            return false;
        end

        local pcVisibilityMode = aoeSettings.pcVisibilityMode;
        if (pcVisibilityMode == 3) then
            return true;
        elseif (pcVisibilityMode == 0) then
            return false;
        end

        local party = AshitaCore:GetMemoryManager():GetParty();
        if (not party) then return false end
        local allowAlliance = pcVisibilityMode == 2;
        for i = 0, 17 do
            local memberId = party:GetMemberServerId(i);
            if (memberId == actorId and (allowAlliance or i < 6)) then
                return true;
            end
        end
    end

    return false;
end

helpers.drawCircles = function()
    local entity = AshitaCore:GetMemoryManager():GetEntity();

    local pulseSpeed = aoeSettings.adjustedPulseSpeed or 1000;
    local pulsePhase = (os.clock() / pulseSpeed) % 1

    for id, cast in pairs(casts) do
        if (cast.timeOut) < os.clock() then
            casts[id] = nil;
            return;
        end

        local targetPointer = entity:GetActorPointer(cast.target);
        local x, y, z = getBone(targetPointer, 0);
        local range = aoeSettings.spells[cast.spellInfo.type].radius or 10;
        local color = aoeSettings.spells[cast.spellInfo.type].color or bit.lshift((0x44 / 0xFF) * 0xFF, 24) + 0x777777;
        
        drawCircle(x, z, y, range, color, pulsePhase);
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
        local spellSettings = aoeSettings.spells[spellInfo.type];
        if (not spellSettings) then
            return;
        end

        --Get target and check if it should be tracked
        local targetCount = ashita.bits.unpack_be(e.data_raw, 0, 72, 6);
        if (targetCount < 1) then return; end

        local targetId = ashita.bits.unpack_be(e.data_raw, 0, 150, 32)
        if (not shouldTrackAction(actorId, targetId, spellInfo.family, spellSettings)) then return; end

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
