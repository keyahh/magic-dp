rotate @s ~ ~
scoreboard players add @s magic.spellDeflectCD 1
execute unless score @s magic.spellDeflectCD matches 2.. run return -1 

tag @s remove deflectedSpell
scoreboard players reset @s magic.spellDeflectCD