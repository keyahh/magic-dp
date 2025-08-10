scoreboard players operation #magicSearch magic.id = @s magic.id

tag @s add thisPlayer
execute summon cow run function magic:spells/42/setup_base
tag @s remove thisPlayer

function animated_java:raptor/summon {args:{animation:"flying_idle",start_animation:true}}