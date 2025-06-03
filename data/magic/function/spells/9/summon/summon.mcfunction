scoreboard players set #chainLength magic.temp 36
scoreboard players add #chainID magic.chainID 1
scoreboard players operation #magicSearch magic.id = @s magic.id
execute summon marker run function magic:spells/9/summon/setup_anchor
execute summon marker run function magic:spells/9/summon/setup_lead
execute if score #chainLength magic.temp matches 1.. run function magic:spells/9/summon/head

schedule function magic:spells/9/control/loop 1t append