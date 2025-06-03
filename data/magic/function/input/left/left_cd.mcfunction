scoreboard players remove @s magic.aCD 1
execute if score @s magic.aCD matches 1.. run return run advancement revoke @s only magic:input/left_cd
scoreboard players reset @s magic.aCD