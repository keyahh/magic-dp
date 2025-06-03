scoreboard players add @s bezier.temp 4
function magic:spells/9/bezier/bezier

function magic:spells/9/bezier/tp with storage bezier:points
kill @s[scores={bezier.temp=100..}]
