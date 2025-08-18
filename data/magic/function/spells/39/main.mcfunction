scoreboard players operation #magicSearch magic.id = @s magic.id

scoreboard players operation #magicFlameTemp magic.flameTime = @s magic.flameTime
scoreboard players operation #magicFlameTemp magic.flameTime %= #4 const
execute if score #magicFlameTemp magic.flameTime matches 0 anchored eyes positioned ^ ^-0.3 ^ anchored feet rotated as @s summon marker run function magic:spells/39/setup_flame

scoreboard players remove @s magic.flameTime 1

execute if score @s magic.flameTime matches ..0 run function magic:spells/39/remove

schedule function magic:spells/39/loop 1t append