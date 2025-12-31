advancement revoke @s only magic:deflect_tick
advancement revoke @s only magic:deflect_cd

#execute if score @s magic.spellDeflectCD matches 1.. run tellraw @s "fail"
execute if score @s magic.spellDeflectCD matches 1.. run return -1
execute unless score @s magic.spellDeflectCD matches 1.. unless score @s magic.spellDeflectFrame matches 1.. run scoreboard players set @s magic.spellDeflectFrame 4

#tellraw @a "lclick"