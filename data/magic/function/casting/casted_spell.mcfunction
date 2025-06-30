advancement revoke @s only magic:casted_spell

scoreboard players remove @s magic.castTime 1

execute if score @s magic.castTime matches ..0 run function magic:casting/revoke