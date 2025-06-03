function animated_java:sword_projectile/animations/summon/play
scoreboard players operation @s magic.id = #magicSearch magic.id
scoreboard players set @s slowcast.dist 6

tag @s add conjuration
tag @s add sword
tag @s add magic