scoreboard players operation #magicSearch magic.id = @s magic.id
scoreboard players operation #magicSearch magic.spellID = @s magic.spellID

#cow check
scoreboard players set #hasCow magic.temp 0
execute on passengers if entity @s[type=cow] run scoreboard players set #hasCow magic.temp 1
execute if score #hasCow magic.temp matches 0 run function magic:spells/40/remove
scoreboard players reset #hasCow magic.temp

#damage
execute positioned ~-0.75 ~-0.75 ~-0.75 as @e[distance=..16,type=#magic:targets,predicate=!magic:match_id,dx=0.5,dy=0.5,dz=0.5] run damage @s 60 minecraft:mob_attack

#health
execute unless block ~ ~1.5 ~ #magic:passable run return -1
execute on passengers if entity @s[type=cow] store result score #hurttime magic.temp run data get entity @s HurtTime
execute if score #hurttime magic.temp matches 10 run function magic:spells/40/update_health