scoreboard players remove @s magic.dodgeCD 1
execute if score @s magic.dodgeCD matches 1.. run return run advancement revoke @s only magic:dodge_cd
scoreboard players reset @s magic.dodgeCD