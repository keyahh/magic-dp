scoreboard players reset #magicRange slowcast.itt
tp @s ~ ~ ~
particle block{block_state:"minecraft:netherite_block"} ~ ~ ~ 0 0 0 1 5 force
function animated_java:sword_projectile/remove/this
playsound minecraft:block.glass.break master @a ~ ~ ~ 1.5 0.9