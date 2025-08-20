advancement revoke @s only magic:deflect_cd

scoreboard players remove @s magic.spellDeflectCD 1

execute if score @s magic.spellDeflectCD matches ..0 run function magic:casting/deflect/revoke