#only projSpells

execute store result score #rng magic.temp run random value 0..12

execute if score #rng magic.temp matches 0 run scoreboard players set @s magic.spellID 2
execute if score #rng magic.temp matches 1 run scoreboard players set @s magic.spellID 3
execute if score #rng magic.temp matches 2 run scoreboard players set @s magic.spellID 5
execute if score #rng magic.temp matches 3 run scoreboard players set @s magic.spellID 6
execute if score #rng magic.temp matches 4 run scoreboard players set @s magic.spellID 21
execute if score #rng magic.temp matches 5 run scoreboard players set @s magic.spellID 22
execute if score #rng magic.temp matches 6 run scoreboard players set @s magic.spellID 26
execute if score #rng magic.temp matches 7 run scoreboard players set @s magic.spellID 28
execute if score #rng magic.temp matches 8 run scoreboard players set @s magic.spellID 31
execute if score #rng magic.temp matches 9 run scoreboard players set @s magic.spellID 33
execute if score #rng magic.temp matches 10 run scoreboard players set @s magic.spellID 34
execute if score #rng magic.temp matches 11 run scoreboard players set @s magic.spellID 37
execute if score #rng magic.temp matches 12 run scoreboard players set @s magic.spellID 46