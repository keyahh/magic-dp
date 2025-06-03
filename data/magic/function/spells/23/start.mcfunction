scoreboard players operation #magicSearch magic.id = @s magic.id

scoreboard players set $strength player_motion.api.launch 15000

tag @s add thisPlayer
execute as @a[predicate=!magic:match_id,distance=..6] at @s facing entity @n[type=#magic:magic_user,tag=thisPlayer,distance=..6] feet rotated ~180 0 run function player_motion:api/launch_looking
execute as @e[type=#magic:targets,type=!player,predicate=!magic:match_id,distance=..6] at @s run function magic:spells/23/launch_nonplayer
tag @s remove thisPlayer

playsound minecraft:entity.wind_charge.wind_burst master squidgga ~ ~ ~ 1 0.5