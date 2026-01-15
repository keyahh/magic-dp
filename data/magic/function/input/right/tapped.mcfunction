#execute unless score @s magic.dCD matches 1.. run say "d"
execute unless score @s magic.dCD matches 1.. run function magic:input/add_to_history {"input":"d"}

advancement revoke @s only magic:input/right
advancement revoke @s only magic:input/right_cd

scoreboard players set @s magic.dCD 2