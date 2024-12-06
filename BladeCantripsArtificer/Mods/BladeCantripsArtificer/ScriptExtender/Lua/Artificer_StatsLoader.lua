function Artificer_StatsLoaded()
    local artificerCantrip = {
        "Target_GreenFlameBlade",
        "Target_BoomingBlade",
        "Projectile_LightningLure",
    }
    local artificerCantripList = {
        "b9808849-c41b-444a-83aa-9748e03e9e16",
        "af3aa11f-cc98-412f-a85e-7fae4561a4d4"
    }
    
    PatchLists(artificerCantrip, artificerCantripList)
end

function PatchLists (spells, lists)
    for _, id in pairs(lists) do
        local spellList = Ext.StaticData.Get(id, "SpellList")
        _P("Detected spell list with UUID ", id)
        _P(spellList)
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
                _P("Adding spell ", spell," from original list")
                resultList[index] = spell
                index = index + 1
            end
        end
        for _, spell in pairs (spells) do
            if not ListCheck(resultsList,spell) then
                _P("Adding spell ", spell," from new list")
                resultList[index] = spell
                index = index + 1
            end
        end
        return resultList
    end

end


Ext.Events.StatsLoaded:Subscribe(Artificer_StatsLoaded)

