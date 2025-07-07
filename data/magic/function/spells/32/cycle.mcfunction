scoreboard players reset @s magic.sound

scoreboard players add @s magic.temp 1
execute if score @s magic.temp matches 19.. run scoreboard players set @s magic.temp 1

execute if score @s magic.temp matches 1 facing ^0.75000 ^0.00000 ^0 run return run tp @s ^ ^ ^0.15
execute if score @s magic.temp matches 2 facing ^0.70477 ^0.25652 ^0 run return run tp @s ^ ^ ^0.15
execute if score @s magic.temp matches 3 facing ^0.57453 ^0.48209 ^0 run return run tp @s ^ ^ ^0.15
execute if score @s magic.temp matches 4 facing ^0.37500 ^0.64952 ^0 run return run tp @s ^ ^ ^0.15
execute if score @s magic.temp matches 5 facing ^0.13024 ^0.73861 ^0 run return run tp @s ^ ^ ^0.15
execute if score @s magic.temp matches 6 facing ^-0.13024 ^0.73861 ^0 run return run tp @s ^ ^ ^0.15
execute if score @s magic.temp matches 7 facing ^-0.37500 ^0.64952 ^0 run return run tp @s ^ ^ ^0.15
execute if score @s magic.temp matches 8 facing ^-0.57453 ^0.48209 ^0 run return run tp @s ^ ^ ^0.15
execute if score @s magic.temp matches 9 facing ^-0.70477 ^0.25652 ^0 run return run tp @s ^ ^ ^0.15
execute if score @s magic.temp matches 10 facing ^-0.75000 ^0.00000 ^0 run return run tp @s ^ ^ ^0.15
execute if score @s magic.temp matches 11 facing ^-0.70477 ^-0.25652 ^0 run return run tp @s ^ ^ ^0.15
execute if score @s magic.temp matches 12 facing ^-0.57453 ^-0.48209 ^0 run return run tp @s ^ ^ ^0.15
execute if score @s magic.temp matches 13 facing ^-0.37500 ^-0.64952 ^0 run return run tp @s ^ ^ ^0.15
execute if score @s magic.temp matches 14 facing ^-0.13024 ^-0.73861 ^0 run return run tp @s ^ ^ ^0.15
execute if score @s magic.temp matches 15 facing ^0.13024 ^-0.73861 ^0 run return run tp @s ^ ^ ^0.15
execute if score @s magic.temp matches 16 facing ^0.37500 ^-0.64952 ^0 run return run tp @s ^ ^ ^0.15
execute if score @s magic.temp matches 17 facing ^0.57453 ^-0.48209 ^0 run return run tp @s ^ ^ ^0.15
execute if score @s magic.temp matches 18 facing ^0.70477 ^-0.25652 ^0 run return run tp @s ^ ^ ^0.15
