function BladeCantrips_StatsLoaded()
    local Cantrip = {
        "Target_GreenFlameBlade",
        "Target_BoomingBlade",
        "Projectile_LightningLure",
    }
    local CantripList = {
        "61f79a30-2cac-4a7a-b5fe-50c89d307dd6",
        "c98f2011-31e1-4e9a-8061-62c8679c645e"
    }
    local Spell_2 = {
        "Shout_ShadowBlade"
    }
    local SpellList_2 = {
        "7ea8f476-97a1-4256-8f10-afa76a845cce",
        "c213ca01-3767-457b-a5c8-fd4c1dd656e2",
        "75e04c40-be8f-40a5-9acc-0b5d59d5f3a6",
        "bd71fffb-e4d2-4233-9a31-13d43fba36e3",
        "586a8796-34f4-41f5-a3ef-95738561d55d",
        "c98f2011-31e1-4e9a-8061-62c8679c645e"
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

