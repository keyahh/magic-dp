advancement revoke @s only magic:spells/rend_tick

scoreboard players remove @s magic.rendTime 1
execute if score @s magic.rendTime matches ..0 run function magic:spells/45/end_ray

execute if score @s magic.rendTime matches ..0 run function magic:spells/45/revoke