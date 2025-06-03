scoreboard players remove @s magic.rclickCD 1
execute if score @s magic.rclickCD matches 1.. run return run advancement revoke @s only magic:input/rclick_cd

scoreboard players reset @s magic.rclickCD
function magic:casting/release_spell