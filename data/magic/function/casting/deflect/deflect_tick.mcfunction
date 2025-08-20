advancement revoke @s only magic:deflect_tick

#extra tick for easier rotation
execute unless score @s magic.spellDeflectFrame matches 4.. run function magic:casting/deflect/start_deflect

scoreboard players operation #magicSearch magic.id = @s magic.id
execute rotated as @s as @e[type=#magic:proj_spell,tag=deflectedSpell,predicate=magic:match_id] run function magic:casting/deflect/deflected_spell_main

scoreboard players remove @s magic.spellDeflectFrame 1

execute if score @s magic.spellDeflectFrame matches ..0 run function magic:casting/deflect/revoke_deflect_tick