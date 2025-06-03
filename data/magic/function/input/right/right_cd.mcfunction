scoreboard players remove @s magic.dCD 1
execute if score @s magic.dCD matches 1.. run return run advancement revoke @s only magic:input/right_cd
scoreboard players reset @s magic.dCD