tag @s add thisHunter

execute if score #magicMotion magic.temp matches 1 positioned 0.0 0.0 0.0 positioned ^0.8 ^ ^1.2 summon marker run function magic:mobs/hunter/motion/motion_marker
execute if score #magicMotion magic.temp matches 2 positioned 0.0 0.0 0.0 positioned ^1.6 ^ ^2 summon marker run function magic:mobs/hunter/motion/motion_marker
execute if score #magicMotion magic.temp matches 3 positioned 0.0 0.0 0.0 positioned ^3 ^ ^3.4 summon marker run function magic:mobs/hunter/motion/motion_marker
execute if score #magicMotion magic.temp matches 4 positioned 0.0 0.0 0.0 positioned ^4.5 ^ ^4.9 summon marker run function magic:mobs/hunter/motion/motion_marker

tag @s remove thisHunter