data remove storage magic:data newSpell
$data modify storage magic:data newSpell.spellID set value $(spellID)
$data modify storage magic:data newSpell.sequence set value $(sequence)

item modify entity @s weapon.mainhand magic:add_spell