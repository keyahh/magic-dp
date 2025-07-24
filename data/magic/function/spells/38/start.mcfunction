scoreboard players operation #magicSearch magic.id = @s magic.id
scoreboard players add #spellID magic.spellID 1

execute anchored eyes positioned ^ ^-0.3 ^1 anchored feet summon marker run function magic:spells/38/setup_star_anchor

schedule function magic:spells/38/loop 1t append