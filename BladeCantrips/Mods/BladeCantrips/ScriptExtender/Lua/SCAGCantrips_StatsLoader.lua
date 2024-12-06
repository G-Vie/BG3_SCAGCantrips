function SCAGCantrips_StatsLoaded()
	local eleAffinity = Ext.Stats.Get("ELEMENTALAFFINITY_FIRE_EXTRA_DAMAGE_TECHNICAL")
    local eleGish = Ext.Stats.Get("MAG_ElementalGish_CantripBooster_Amulet_Passive")
    local canBooster = Ext.Stats.Get("MAG_CharismaCaster_CantripBooster_Passive")
    eleAffinity.Boosts = "IF(IsSpell() and IsDamageTypeFire() and not WeaponAttackSpell()):DamageBonus(max(0, CharismaModifier));IF((SpellDamageTypeIs(DamageType.Fire) and WeaponAttackSpell()) or SpellId('Target_GreenFlameBlade')):CharacterWeaponDamage(max(0, CharismaModifier),Fire)"
    eleGish.Boosts = "IF(IsCantrip() and not WeaponAttackSpell() and (SpellDamageTypeIs(DamageType.Fire) or SpellDamageTypeIs(DamageType.Cold) or SpellDamageTypeIs(DamageType.Thunder) or SpellDamageTypeIs(DamageType.Acid) or SpellDamageTypeIs(DamageType.Lightning))):DamageBonus(max(1,SpellCastingAbilityModifier));IF(SpellId('Target_GreenFlameBlade')):CharacterWeaponDamage(max(1, SpellCastingAbilityModifier),Fire);IF(SpellId('Target_BoomingBlade')):CharacterWeaponDamage(max(1, SpellCastingAbilityModifier),Thunder)"
    canBooster.Boosts = "IF(IsCantrip() and not WeaponAttackSpell()):DamageBonus(max(1,CharismaModifier));IF(SpellId('Target_GreenFlameBlade')):CharacterWeaponDamage(max(1, CharismaModifier),Fire);IF(SpellId('Target_BoomingBlade')):CharacterWeaponDamage(max(1, CharismaModifier),Thunder)"

    local wizardCantrip = {
        "Target_GreenFlameBlade",
        "Target_BoomingBlade",
        "Projectile_LightningLure",
    }
    local wizardSpell_2 = {
        "Shout_ShadowBlade"
    }
    
    local ATSpell_2 = {
        "Shout_ShadowBlade"
    }
    
    local sorcererCantrip = {
        "Target_GreenFlameBlade",
        "Target_BoomingBlade",
        "Projectile_LightningLure",
    }
    local sorcererSpell_2 = {
        "Shout_ShadowBlade"
    }
    
    local warlockCantrip = {
        "Target_GreenFlameBlade",
        "Target_BoomingBlade",
        "Projectile_LightningLure",
    }
    local warlockSpell_2 = {
        "Shout_ShadowBlade"
    }
    
    local wizardCantripList = {
        "3cae2e56-9871-4cef-bba6-96845ea765fa",
        "beb9389e-24f8-49b0-86a5-e8d08b6fdc2e"
    }
    
    local magicalSecretsList_2 = {
        "65ad9f94-0cbf-4c79-9ffb-7fb9c19f9a50",
        "175ceed7-5a53-4f48-823c-41c4f72d18ae",
        "858d4322-9e9f-4aa4-aada-9c68835dc6fe"
    }

    local wizardSpellList_1 = {
        "11f331b0-e8b7-473b-9d1f-19e8e4178d7d",
        "80c6b070-c3a6-4864-84ca-e78626784eb4",
        "22755771-ca11-49f4-b772-13d8b8fecd93",
        "820b1220-0385-426d-ae15-458dc8a6f5c0",
        "f781a25e-d288-43b4-bf5d-3d8d98846687",
        "bc917f22-7f71-4a25-9a77-7d2f91a96a65",
        "beb9389e-24f8-49b0-86a5-e8d08b6fdc2e"
    }
    
    local wizardSpellList_2 = {
        "80c6b070-c3a6-4864-84ca-e78626784eb4",
        "22755771-ca11-49f4-b772-13d8b8fecd93",
        "820b1220-0385-426d-ae15-458dc8a6f5c0",
        "f781a25e-d288-43b4-bf5d-3d8d98846687",
        "bc917f22-7f71-4a25-9a77-7d2f91a96a65",
        "beb9389e-24f8-49b0-86a5-e8d08b6fdc2e"
    }
    
    local ATSpellList_2 = {
        "f9fd64f1-f417-4544-94a9-51d8876d68df",
        "c3a861a2-6bbc-4ff6-96e4-a4accf10d957"
    }
    
    local sorcererCantripList = {
        "485a68b4-c678-4888-be63-4a702efbe391",
        "2ba5248a-f014-409d-ab26-b50116f7e477"
    }
    
    local sorcererSpellList_1 = {
        "92c4751f-6255-4f67-822c-a75d53830b27",
        "f80396e2-cb76-4694-b0db-5c34da61a478",
        "dcbaf2ae-1f45-453e-ab83-cd154f8277a4",
        "5fe40622-1d3e-4cc1-8d89-e66fe51d8c5c",
        "3276fcfe-e143-4559-b6e0-7d7aa0ffcb53",
        "1270a6db-980b-4e3b-bf26-2924da61dfd5",
        "2ba5248a-f014-409d-ab26-b50116f7e477"
    }
    
    local sorcererSpellList_2 = {
        "f80396e2-cb76-4694-b0db-5c34da61a478",
        "dcbaf2ae-1f45-453e-ab83-cd154f8277a4",
        "5fe40622-1d3e-4cc1-8d89-e66fe51d8c5c",
        "3276fcfe-e143-4559-b6e0-7d7aa0ffcb53",
        "1270a6db-980b-4e3b-bf26-2924da61dfd5",
        "2ba5248a-f014-409d-ab26-b50116f7e477"
    }
    
    local warlockCantripList = {
        "f5c4af9c-5d8d-4526-9057-94a4b243cd40",
        "32879c22-4858-48ef-8f8d-22e6d395b396"
    }
    
    local fiendSpellList_1 = {
        "4823a292-f584-4f7f-8434-6630c72e5411",
        "835aeca7-c64a-4aaa-a25c-143aa14a5cec",
        "5dec41aa-f16a-434e-b209-50c07e64e4ed",
        "7ad7dbd0-751b-4bcd-8034-53bcc7bfb19d",
        "deab57bf-4eec-4085-82f7-87335bce3f5d",
        "69d140ce-e988-4007-b069-30fe2e5f0d2f"
    }
    
    local fiendSpellList_2 = {
        "835aeca7-c64a-4aaa-a25c-143aa14a5cec",
        "5dec41aa-f16a-434e-b209-50c07e64e4ed",
        "7ad7dbd0-751b-4bcd-8034-53bcc7bfb19d",
        "deab57bf-4eec-4085-82f7-87335bce3f5d",
        "69d140ce-e988-4007-b069-30fe2e5f0d2f"
    }
    
    local archfeySpellList_1 = {
        "e0099b15-2599-4cba-a54b-b25ae03d6519",
        "0cc2c8ab-9bbc-43a7-a66d-08e47da4c172",
        "f18ad912-e2f4-47a9-8744-73d6a51c2941",
        "c3d8a4a5-9dae-4193-8322-a5d1c5b89f47",
        "0a9b924f-64fb-4f22-b975-5eeedc99b2fd",
        "f95ef4cc-5f75-4274-bda5-589175d2ac66"
    }
    
    local archfeySpellList_2 = {
        "0cc2c8ab-9bbc-43a7-a66d-08e47da4c172",
        "f18ad912-e2f4-47a9-8744-73d6a51c2941",
        "c3d8a4a5-9dae-4193-8322-a5d1c5b89f47",
        "0a9b924f-64fb-4f22-b975-5eeedc99b2fd",
        "f95ef4cc-5f75-4274-bda5-589175d2ac66"
    }
    
    local gooSpellList_1 = {
        "65952d48-bb16-4ad7-b173-532182bf7770",
        "fe101a94-8619-49b2-859d-a68c2c291054",
        "30e9b761-6be0-418e-bb28-5103c00c663b",
        "b64e527e-1f97-4125-84f7-78376ab1440b",
        "6d2edca9-71a7-4f3f-89f0-fccfff0bdee5",
        "9bcde680-356e-445e-abdb-c21f3400648b"
    }
    
    local gooSpellList_2 = {
        "65952d48-bb16-4ad7-b173-532182bf7770",
        "fe101a94-8619-49b2-859d-a68c2c291054",
        "30e9b761-6be0-418e-bb28-5103c00c663b",
        "b64e527e-1f97-4125-84f7-78376ab1440b",
        "9bcde680-356e-445e-abdb-c21f3400648b"
    }


    PatchLists(wizardCantrip, wizardCantripList)
    PatchLists(wizardSpell_2, wizardSpellList_2)
    PatchLists(ATSpell_2, ATSpellList_2)
    PatchLists(sorcererCantrip, sorcererCantripList)
    PatchLists(sorcererSpell_2, sorcererSpellList_2)
    PatchLists(warlockCantrip, warlockCantripList)
    PatchLists(warlockSpell_2, fiendSpellList_2)
    PatchLists(warlockSpell_2, gooSpellList_2)
    PatchLists(warlockSpell_2, archfeySpellList_2)

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


Ext.Events.StatsLoaded:Subscribe(SCAGCantrips_StatsLoaded)

