execute positioned ~ ~-2 ~1 run function magic:spells/13/beam/beam
execute summon marker run function magic:spells/13/bolt/bolt {"x":0,"y":-29}
execute summon marker run function magic:spells/13/bolt/bolt {"x":60,"y":-29}
execute summon marker run function magic:spells/13/bolt/bolt {"x":120,"y":-29}
execute summon marker run function magic:spells/13/bolt/bolt {"x":180,"y":-29}
execute summon marker run function magic:spells/13/bolt/bolt {"x":240,"y":-29}
execute summon marker run function magic:spells/13/bolt/bolt {"x":300,"y":-29}

playsound minecraft:item.totem.use master @a ~ ~ ~ 6 0.8
playsound minecraft:entity.warden.sonic_boom master @a ~ ~ ~ 6 0.3
playsound minecraft:entity.warden.sonic_boom master @a ~ ~ ~ 6 0.8
playsound minecraft:entity.lightning_bolt.thunder master @a ~ ~ ~ 6 0.5

tag @n[type=#magic:magic_user,predicate=magic:match_id] add thisPlayer
execute as @e[type=#magic:targets,distance=..40] unless score @s magic.iframe matches 1.. run damage @s 500 magic:ignore_cooldown by @n[type=#magic:magic_user,tag=thisPlayer]
tag @n[type=#magic:magic_user,predicate=magic:match_id] remove thisPlayer

execute if score #magicDestruction magic.setting matches 1 run summon creeper ~ ~ ~ {Silent:1b,ExplosionRadius:40b,Fuse:-1,ignited:1b,powered:1b}