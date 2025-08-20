playsound minecraft:entity.player.attack.weak master @a ~ ~ ~ 2 1

function magic:casting/deflect/particles

scoreboard players reset #magicRange magic.temp

#setup for following player rotation
scoreboard players reset @s magic.spellDeflectCD
tag @s add deflectedSpell
scoreboard players operation @s magic.id = #magicSearch magic.id

execute rotated as @p[tag=thisPlayer] run rotate @s ~ ~

#allows for consecutive deflects without cooldown
tag @p[tag=thisPlayer] add hasDeflected
scoreboard players reset @p[tag=thisPlayer] magic.spellDeflectCD