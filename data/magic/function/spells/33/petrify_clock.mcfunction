scoreboard players remove @s magic.petrify 1
execute if score @s magic.petrify matches ..0 run function magic:spells/33/remove_petrify

schedule function magic:spells/33/petrify_loop 1t append

#advancement revoke @s only magic:effects/petrify