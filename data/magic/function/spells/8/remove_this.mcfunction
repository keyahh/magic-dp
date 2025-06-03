scoreboard players operation #magicSearch magic.id = @s magic.id
execute as @e[type=item_display,tag=shieldDisplay,predicate=magic:match_id] run function animated_java:shield/remove/this
tag @e[type=#magic:magic_user,predicate=magic:match_id] remove hasMagicShield
tag @a[predicate=magic:match_id] remove hasMagicShield

tp @e[tag=shield,predicate=magic:match_id,distance=..20] 0 -64 0
kill @e[tag=shield,predicate=magic:match_id]
