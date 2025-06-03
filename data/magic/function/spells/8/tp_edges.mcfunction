scoreboard players operation #magicSearch magic.id = @s magic.id

execute positioned ^ ^1 ^ run tp @n[type=item_display,tag=shield1,predicate=magic:match_id,distance=..20] ~ ~ ~ facing entity @s
execute positioned ^ ^-1 ^ run tp @n[type=item_display,tag=shield2,predicate=magic:match_id,distance=..20] ~ ~ ~ facing entity @s
execute positioned ^1 ^ ^ run tp @n[type=item_display,tag=shield3,predicate=magic:match_id,distance=..20] ~ ~ ~ facing entity @s
execute positioned ^-1 ^ ^ run tp @n[type=item_display,tag=shield4,predicate=magic:match_id,distance=..20] ~ ~ ~ facing entity @s
execute positioned ^1 ^1 ^ run tp @n[type=item_display,tag=shield5,predicate=magic:match_id,distance=..20] ~ ~ ~ facing entity @s
execute positioned ^-1 ^1 ^ run tp @n[type=item_display,tag=shield6,predicate=magic:match_id,distance=..20] ~ ~ ~ facing entity @s
execute positioned ^1 ^-1 ^ run tp @n[type=item_display,tag=shield7,predicate=magic:match_id,distance=..20] ~ ~ ~ facing entity @s
execute positioned ^-1 ^-1 ^ run tp @n[type=item_display,tag=shield8,predicate=magic:match_id,distance=..20] ~ ~ ~ facing entity @s