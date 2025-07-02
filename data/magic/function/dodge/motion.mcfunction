playsound minecraft:entity.wind_charge.wind_burst master @a ~ ~ ~ 1 0.6

execute unless block ~ ~-0.5 ~ #magic:passable run scoreboard players set $strength player_motion.api.launch 15000
execute if block ~ ~-0.5 ~ #magic:passable run scoreboard players set $strength player_motion.api.launch 6000

function player_motion:api/launch_looking

scoreboard players set @s magic.iframe 4
advancement revoke @s only magic:iframe_tick