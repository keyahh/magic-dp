#execute unless score @s magic.wCD matches 1.. run say "w"
execute unless score @s magic.wCD matches 2.. run function magic:input/add_to_history {"input":"w"}

advancement revoke @s only magic:input/forward
advancement revoke @s only magic:input/forward_cd

scoreboard players set @s magic.wCD 3