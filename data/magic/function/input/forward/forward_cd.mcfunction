scoreboard players remove @s magic.wCD 1
execute if score @s magic.wCD matches 1.. run return run advancement revoke @s only magic:input/forward_cd
scoreboard players reset @s magic.wCD