scoreboard players operation #magicSearch magic.id = @s magic.id
scoreboard players operation #magicSearch magic.spellID = @s magic.spellID

scoreboard players add @s magic.temp 1
execute if score @s magic.temp matches 120.. run scoreboard players set @s magic.atkCD 100
#execute if score @s magic.temp matches 120.. if entity @n[type=marker,tag=ruinStarAnchor,predicate=magic:match_spell,distance=..3] run function animated_java:ruin_star/remove/this
#execute unless entity @n[type=marker,tag=ruinStarAnchor,predicate=magic:match_spell,distance=..20] run scoreboard players set @s magic.atkCD 40
#execute if score @s magic.temp matches 50 run scoreboard players set @s magic.atkCD 25

execute at @s unless score @s magic.atkCD matches 1.. unless entity @n[type=#magic:priority1,distance=..25,predicate=!magic:match_id] anchored eyes rotated as @n[type=#magic:magic_user,predicate=magic:match_id] positioned ^ ^ ^3.5 rotated as @s positioned ^ ^ ^5 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run tp @s ~ ~ ~ ~ ~

scoreboard players remove @s magic.atkCD 1
execute at @s unless score @s magic.atkCD matches 1.. anchored eyes facing entity @n[type=#magic:priority1,distance=..25,predicate=!magic:match_id] eyes positioned ^ ^ ^3 rotated as @s positioned ^ ^ ^5 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run tp @s ~ ~ ~ ~ ~
execute at @s if score @s magic.atkCD matches 1.. anchored eyes facing entity @n[type=marker,predicate=magic:match_spell,tag=ruinStarAnchor] eyes positioned ^ ^ ^3 rotated as @s positioned ^ ^ ^5 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run tp @s ~ ~ ~ ~ ~

scoreboard players operation #magicRange slowcast.itt = @s slowcast.dist
function magic:spells/38/proj/slowcast