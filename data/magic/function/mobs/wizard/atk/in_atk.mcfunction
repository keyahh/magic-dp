scoreboard players operation #magicSearch magic.id = @s magic.id

execute facing entity @p[gamemode=!creative,gamemode=!spectator,distance=..20] feet run rotate @s ~ ~
execute as @n[type=item_display,tag=aj.wizard.root,predicate=magic:match_id] at @s facing entity @p[gamemode=!creative,gamemode=!spectator,distance=..20] feet run rotate @s ~ 0