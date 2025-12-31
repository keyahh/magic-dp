advancement revoke @s only magic:deflect_tick
scoreboard players reset @s magic.spellDeflectFrame
scoreboard players set @s magic.spellDeflectCD 10

execute if entity @s[tag=hasDeflected] run scoreboard players reset @s magic.spellDeflectCD

tag @s remove hasDeflected