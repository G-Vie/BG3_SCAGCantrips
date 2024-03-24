Ext.Osiris.RegisterListener("UsingSpell", 5, "before", function (caster, spell, _, _, _)
    _P("Spell detected")
    if (spell == "Target_BoomingBlade" and  Osi.HasActiveStatus(caster,"BOOMINGBLADE_DAMAGE") == 0) then
        Osi.ApplyStatus(caster,"BOOMINGBLADE_DAMAGE", 6.0, 1, caster)
        _P("APPLIED BOOMING BLADE STATUS")
    elseif (spell == "Target_GreenFlameBlade" and Osi.HasActiveStatus(caster,"GREENFLAMEBLADE_DAMAGE") == 0) then
        Osi.ApplyStatus(caster,"GREENFLAMEBLADE_DAMAGE", 6.0, 1, caster)
        _P("APPLIED GFB STATUS")
    end
end)
