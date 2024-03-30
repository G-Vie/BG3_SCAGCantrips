function SCAGCantrips_StatsLoaded()
	local eleAffinity = Ext.Stats.Get("ELEMENTALAFFINITY_FIRE_EXTRA_DAMAGE_TECHNICAL")
    local eleGish = Ext.Stats.Get("MAG_ElementalGish_CantripBooster_Amulet_Passive")
    local canBooster = Ext.Stats.Get("MAG_CharismaCaster_CantripBooster_Passive")
    eleAffinity.Boosts = "IF(IsSpell() and IsDamageTypeFire() and not WeaponAttackSpell()):DamageBonus(max(0, CharismaModifier));IF((SpellDamageTypeIs(DamageType.Fire) and WeaponAttackSpell()) or SpellId('Target_GreenFlameBlade')):CharacterWeaponDamage(max(0, CharismaModifier),Fire)"
    eleGish.Boosts = "IF(IsCantrip() and not WeaponAttackSpell() and (SpellDamageTypeIs(DamageType.Fire) or SpellDamageTypeIs(DamageType.Cold) or SpellDamageTypeIs(DamageType.Thunder) or SpellDamageTypeIs(DamageType.Acid) or SpellDamageTypeIs(DamageType.Lightning))):DamageBonus(max(1,SpellCastingAbilityModifier));IF(SpellId('Target_GreenFlameBlade')):CharacterWeaponDamage(max(1, SpellCastingAbilityModifier),Fire);IF(SpellId('Target_BoomingBlade')):CharacterWeaponDamage(max(1, SpellCastingAbilityModifier),Thunder)"
    canBooster.Boosts = "IF(IsCantrip() and not WeaponAttackSpell()):DamageBonus(max(1,CharismaModifier));IF(SpellId('Target_GreenFlameBlade')):CharacterWeaponDamage(max(1, CharismaModifier),Fire);IF(SpellId('Target_BoomingBlade')):CharacterWeaponDamage(max(1, CharismaModifier),Thunder)"
end

Ext.Events.StatsLoaded:Subscribe(SCAGCantrips_StatsLoaded)

