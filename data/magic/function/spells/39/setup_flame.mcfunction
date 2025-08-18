rotate @s ~ ~
scoreboard players operation @s magic.id = #magicSearch magic.id

tag @s add magic
tag @s add flameSpell
tag @s add projSpell
schedule function magic:spells/39/flame_loop 1t append