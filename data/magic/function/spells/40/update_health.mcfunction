scoreboard players operation #magicSearch magic.spellID = @s magic.spellID
execute on passengers if entity @s[type=cow] store result score #health magic.temp run data get entity @s Health 10
#tellraw @p {"score":{"name":"#health","objective":"magic.temp"},"color":"yellow"}
execute as @e[type=item_display,tag=earthWorm,predicate=magic:match_spell] on passengers if entity @s[type=cow] store result entity @s Health float 0.1 run scoreboard players get #health magic.temp
scoreboard players reset #health magic.temp