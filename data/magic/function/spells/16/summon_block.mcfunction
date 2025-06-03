$summon block_display ~ ~ ~ {Tags:["magic","rippleBlock","newRippleBlock"],block_state:{Name:"$(block)"}}
scoreboard players operation @n[type=block_display,tag=newRippleBlock] magic.id = #magicSearch magic.id
tag @n[type=block_display,tag=newRippleBlock] remove newRippleBlock
playsound minecraft:block.stone.place master @a ~ ~ ~ 1.3 1