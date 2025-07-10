#y = (u)sin(x) - (1/2)g(2t+1)

scoreboard players operation #temp slowcast = @s slowcast.usin

#2t + 1
scoreboard players operation #temp1 slowcast = @s slowcast.maxDist
scoreboard players operation #temp1 slowcast -= @s slowcast.time
scoreboard players operation #temp1 slowcast *= #5 const
scoreboard players operation #temp1 slowcast += #temp1 slowcast

#(1/2)g(2t+1)
scoreboard players operation #temp1 slowcast *= #g/2 slowcast

#
scoreboard players operation #temp slowcast -= #temp1 slowcast