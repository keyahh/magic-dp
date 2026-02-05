scoreboard players reset #litTime magic.temp
execute store result score #litTime magic.temp run data get block ~ ~ ~ lit_time_remaining
scoreboard players add #litTime magic.temp 80
execute store result block ~ ~ ~ lit_time_remaining int 1 run scoreboard players get #litTime magic.temp