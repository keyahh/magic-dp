#execute unless score @s magic.aCD matches 1.. run say "a"
execute unless score @s magic.aCD matches 2.. run function magic:input/add_to_history {"input":"a"}

advancement revoke @s only magic:input/left
advancement revoke @s only magic:input/left_cd

scoreboard players set @s magic.aCD 3