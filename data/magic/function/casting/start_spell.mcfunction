execute if score @s magic.petrify matches 1.. run return -1

$function magic:spells/$(spellID)/start
$scoreboard players set #magicSearch magic.temp $(spellID)
execute if score #magicSearch magic.temp matches 0.. run scoreboard players set @s magic.castTime 2
scoreboard players reset #magicSearch magic.temp