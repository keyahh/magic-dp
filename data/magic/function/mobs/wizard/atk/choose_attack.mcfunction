tag @s add inAtk
effect give @s slowness 2 255 true
scoreboard players set @s magic.atkCD 58
scoreboard players operation #magicSearch magic.id = @s magic.id

execute if entity @s[tag=moving] run function magic:mobs/wizard/walk/stop_moving
execute as @n[type=wandering_trader,tag=wizBase,predicate=magic:match_id,distance=..1] at @s run tp @s ~ ~ ~ facing entity @p feet
execute as @n[type=item_display,tag=aj.wizard.root,predicate=magic:match_id] run function animated_java:wizard/animations/aggro/play


execute store result score #rng magic.temp run random value 1..20

execute if score #rng magic.temp matches 1..5 as @n[type=item_display,tag=aj.wizard.root,predicate=magic:match_id] run return run function animated_java:wizard/animations/single/play
execute if score #rng magic.temp matches 6..13 as @n[type=item_display,tag=aj.wizard.root,predicate=magic:match_id] run return run function animated_java:wizard/animations/flury/play

execute if score #rng magic.temp matches 14..18 if entity @a[gamemode=!creative,gamemode=!spectator,distance=..6] as @n[type=item_display,tag=aj.wizard.root,predicate=magic:match_id] run return run function animated_java:wizard/animations/blast/play
execute if score #rng magic.temp matches 14..18 unless entity @a[gamemode=!creative,gamemode=!spectator,distance=..6] as @n[type=item_display,tag=aj.wizard.root,predicate=magic:match_id,tag=hasMagicShield] run return run function animated_java:wizard/animations/single/play
execute if score #rng magic.temp matches 14..18 unless entity @a[gamemode=!creative,gamemode=!spectator,distance=..6] as @n[type=item_display,tag=aj.wizard.root,predicate=magic:match_id] run return run function animated_java:wizard/animations/shield/play

execute if score #rng magic.temp matches 19..20 as @n[type=item_display,tag=aj.wizard.root,predicate=magic:match_id] run function magic:mobs/wizard/spells/summon_animation