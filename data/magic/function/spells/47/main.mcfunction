scoreboard players add @s magic.temp 1

execute if score @s magic.temp matches 220.. run return run function magic:spells/47/clear

scoreboard players remove @s magic.sound 1
execute unless score @s magic.sound matches 1.. unless score @s magic.temp matches 180.. run function magic:spells/47/sound

scoreboard players remove @s magic.hurtCD 1
execute unless score @s magic.hurtCD matches 1.. unless score @s magic.temp matches 200.. run function magic:spells/47/summon_ring

scoreboard players add @s magic.atkCD 1
execute if score @s magic.atkCD matches 4.. unless score @s magic.temp matches 200.. run function magic:spells/47/atk

scoreboard players operation #magicSearch magic.spellID = @s magic.spellID
execute as @e[type=block_display,tag=eqGround,predicate=magic:match_spell] at @s run function magic:spells/47/ground_main
execute as @e[distance=..2.5,type=item_display,tag=earthRing,predicate=magic:match_spell] at @s run function magic:spells/47/ring_main

schedule function magic:spells/47/loop 1t append