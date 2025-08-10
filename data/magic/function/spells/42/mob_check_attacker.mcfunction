tag @s add thisMob

execute on attacker if entity @s[tag=thisPlayer] run tag @e[distance=..40,type=#magic:targets,tag=thisMob] add raptorTarget

tag @s remove thisMob