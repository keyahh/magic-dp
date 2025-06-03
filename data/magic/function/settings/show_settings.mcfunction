tellraw @s {"text":"Magic Settings:","color":"light_purple"}

tellraw @s [{text:"[Explosives Destruction]",color:"yellow",click_event:{action:"run_command",command:"/function magic:settings/toggle_explosive"}}]
