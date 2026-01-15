execute on vehicle run scoreboard players operation #magicSearch magic.spellID = @s magic.spellID

execute on vehicle at @e[distance=..20,type=marker,tag=wormLead,predicate=magic:match_spell,limit=1] facing entity @s feet run tp @s ^ ^ ^1.85 facing ^ ^ ^-1

execute on vehicle at @s run function magic:spells/40/move/ik
execute on vehicle as @e[distance=..20,type=marker,tag=wormLead,predicate=magic:match_spell,limit=1] at @s run function magic:spells/40/main