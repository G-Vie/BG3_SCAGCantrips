function BladeCantrips_StatsLoaded()
    local Cantrip = {
        "Target_GreenFlameBlade",
        "Target_BoomingBlade",
        "Projectile_LightningLure",
    }
    local CantripList = {
        "2f43a103-5bf1-4534-b14f-663decc0c525",
        "42acd9d3-3b44-4d08-a061-3fd2f69aa4bf"
    }
    local Spell_2 = {
        "Shout_ShadowBlade"
    }
    local Spell_3 = {
        "Zone_LightningBolt"
    }
    local Spell_6 = {
        "Projectile_ChainLightning"
    }
    local SpellList_2 = {
        "2968a3e6-6c8a-4c2e-882a-ad295a2ad8ac",
        "21be0992-499f-4c7a-a77a-4430085e947a",
        "37e9b20b-5fd1-45c5-b1c5-159c42397c83",
        "b73aeea5-1ff9-4cac-b61d-b5aa6dfe31c2",
        "f8ba7b05-1237-4eaa-97fa-1d3623d5862b",
        "42acd9d3-3b44-4d08-a061-3fd2f69aa4bf"
    }
    local SpellList_3 = {
        "21be0992-499f-4c7a-a77a-4430085e947a",
        "37e9b20b-5fd1-45c5-b1c5-159c42397c83",
        "b73aeea5-1ff9-4cac-b61d-b5aa6dfe31c2",
        "f8ba7b05-1237-4eaa-97fa-1d3623d5862b",
        "42acd9d3-3b44-4d08-a061-3fd2f69aa4bf"
    }
    local SpellList_6 = {
        "f8ba7b05-1237-4eaa-97fa-1d3623d5862b",
        "42acd9d3-3b44-4d08-a061-3fd2f69aa4bf"
    }
    PatchLists(Cantrip, CantripList)
    PatchLists(Spell_2, SpellList_2)
    PatchLists(Spell_3, SpellList_3)
    PatchLists(Spell_6, SpellList_6)
end

function PatchLists (spells, lists)
    for _, id in pairs(lists) do
        local spellList = Ext.StaticData.Get(id, "SpellList")
        spellList["Spells"] = InsertSpells(spellList["Spells"], spells)
    end
end 

function ListCheck(list, spell)
    if list ~= nil then
        for _, value in pairs(list) do
            if value == spell then
                return true
            end
        end
    end
    return false
end

function InsertSpells (list, spells)
    local resultList = {}
    local index = 0
    
    if list ~= nil and spells ~= nil then
        for _, spell in pairs(list) do
            if not ListCheck(resultList, spell) then
                resultList[index] = spell
                index = index + 1
            end
        end
        for _, spell in pairs (spells) do
            if not ListCheck(resultsList,spell) then
                resultList[index] = spell
                index = index + 1
            end
        end
        return resultList
    end

end


Ext.Events.StatsLoaded:Subscribe(BladeCantrips_StatsLoaded)

