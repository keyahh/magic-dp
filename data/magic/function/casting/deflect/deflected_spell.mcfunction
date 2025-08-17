advancement revoke @s only magic:deflected_spell

scoreboard players remove @s magic.spellDeflectCD 1

execute if score @s magic.spellDeflectCD matches ..0 run function magic:casting/deflect/revoke