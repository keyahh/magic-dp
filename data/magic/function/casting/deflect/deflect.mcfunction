playsound minecraft:entity.player.attack.weak master @a ~ ~ ~ 2 1
playsound minecraft:entity.experience_orb.pickup master @a ~ ~ ~ 0.6 2

#function magic:casting/deflect/particles

scoreboard players reset #magicRange magic.temp

scoreboard players operation @s magic.id = #magicSearch magic.id
execute rotated as @p[tag=thisPlayer] run rotate @s ~ ~