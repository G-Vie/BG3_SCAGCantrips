function BladeCantrips_StatsLoaded()
    local Cantrip = {
        "Target_GreenFlameBlade",
        "Target_BoomingBlade",
        "Projectile_LightningLure",
    }
    local CantripList = {
        "b8faf12f-ca42-45c0-84f8-6951b526182a",
        "fd366d4e-4063-4b6f-9cd9-26889bcd6465"
    }
    local Spell_2 = {
        "Shout_ShadowBlade"
    }
    local SpellList_2 = {
        "92126d17-7f1a-41d2-ae6c-a8d254d2b135",
        "3156daf5-9266-41d0-b52c-5bc559a98654",
        "09c326c9-672c-4198-a4c0-6f07323bde27",
        "ff711c12-b59f-4fde-b9ea-6e5c38ec8f23",
        "6a4e2167-55f3-4ba8-900f-14666b293e93",
        "fd366d4e-4063-4b6f-9cd9-26889bcd6465"
    }
    PatchLists(Cantrip, CantripList)
    PatchLists(Spell_2, SpellList_2)
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

