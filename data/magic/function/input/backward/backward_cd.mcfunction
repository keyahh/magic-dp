scoreboard players remove @s magic.sCD 1
execute if score @s magic.sCD matches 1.. run return run advancement revoke @s only magic:input/backward_cd
scoreboard players reset @s magic.sCD