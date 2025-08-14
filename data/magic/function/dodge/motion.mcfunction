playsound minecraft:entity.wind_charge.wind_burst master @a ~ ~ ~ 0.3 0.6

scoreboard players reset $strength player_motion.api.launch
execute unless block ~ ~-0.001 ~ #magic:passable run scoreboard players set $strength player_motion.api.launch 15000
execute if block ~ ~-0.001 ~ #magic:passable run scoreboard players set $strength player_motion.api.launch 6000

function player_motion:api/launch_looking

scoreboard players set @s magic.iframe 5
scoreboard players set @s magic.dodgeCD 10
advancement revoke @s only magic:iframe_tick
advancement revoke @s only magic:dodge_cd