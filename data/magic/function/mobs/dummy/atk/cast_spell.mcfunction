#ran by dummy model
execute on vehicle if entity @s[tag=randomSpell] run function magic:mobs/dummy/atk/randomize_spell

execute on vehicle store result storage magic:spell spellID int 1 run scoreboard players get @s magic.spellID

execute on vehicle at @s facing entity @p feet run rotate @s ~ 0
execute on vehicle at @s run function magic:mobs/dummy/atk/start_spell with storage magic:spell