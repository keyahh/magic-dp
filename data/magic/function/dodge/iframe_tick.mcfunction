#particle smoke ~ ~ ~ 0.2 0.2 0.2 0.03 10
#particle smoke ~ ~0.5 ~ 0.2 0.2 0.2 0.03 10
#particle smoke ~ ~1 ~ 0.2 0.2 0.2 0.03 10
#particle smoke ~ ~1.5 ~ 0.2 0.2 0.2 0.03 10

scoreboard players remove @s magic.iframe 1
execute if score @s magic.iframe matches 1.. run return run advancement revoke @s only magic:iframe_tick
scoreboard players reset @s magic.iframe