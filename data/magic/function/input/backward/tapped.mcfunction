#execute unless score @s magic.sCD matches 1.. run say "s"
execute unless score @s magic.sCD matches 1.. run function magic:input/add_to_history {"input":"s"}

advancement revoke @s only magic:input/backward
advancement revoke @s only magic:input/backward_cd

scoreboard players set @s magic.sCD 2