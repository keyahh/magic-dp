scoreboard objectives add magic.id dummy
scoreboard objectives add magic.uiID dummy
scoreboard objectives add bezier.temp dummy

scoreboard objectives add magic.setting dummy
scoreboard players add #magicDestruction magic.setting 0

scoreboard objectives add magic.sound dummy
scoreboard objectives add magic.temp dummy
scoreboard objectives add magic.atkCD dummy
scoreboard objectives add magic.hurtCD dummy
scoreboard objectives add magic.castTime dummy
scoreboard objectives add magic.iframe dummy

scoreboard objectives add magic.wCD dummy
scoreboard objectives add magic.sCD dummy
scoreboard objectives add magic.aCD dummy
scoreboard objectives add magic.dCD dummy
scoreboard objectives add magic.rclickCD dummy
scoreboard objectives add magic.shift minecraft.custom:minecraft.sneak_time

scoreboard objectives add magic.shieldID dummy
scoreboard objectives add magic.shieldTime dummy
scoreboard objectives add magic.chainID dummy
scoreboard objectives add magic.batID dummy
scoreboard objectives add magic.batTime dummy
scoreboard objectives add magic.spellID dummy
scoreboard objectives add magic.cloud dummy

scoreboard objectives add magic.bleed dummy
scoreboard objectives add magic.burn dummy

scoreboard players set #magic10 magic.temp 10
scoreboard players set #bezier2 bezier.temp 2
scoreboard players set #bezier100 bezier.temp 100

scoreboard objectives add slowcast.itt dummy
scoreboard objectives add slowcast.dist dummy
scoreboard objectives add slowcast.maxDist dummy
scoreboard objectives add slowcast dummy

setblock 0 -64 0 yellow_shulker_box

schedule function magic:id_loop 10t append

schedule function magic:spells/2/loop 10t append
schedule function magic:spells/3/loop 10t append
schedule function magic:spells/5/loop 10t append
schedule function magic:spells/6/loop 10t append
schedule function magic:spells/8/loop 10t append
schedule function magic:spells/11/loop 10t append
schedule function magic:spells/12/loop 10t append
schedule function magic:spells/13/loop 10t append
schedule function magic:spells/13/flicker/loop 10t append
schedule function magic:spells/14/loop 10t append
schedule function magic:spells/15/loop 10t append
schedule function magic:spells/16/loop 10t append
schedule function magic:spells/17/loop 10t append
schedule function magic:spells/18/loop 10t append
schedule function magic:spells/21/loop 10t append
schedule function magic:spells/24/loop 10t append
schedule function magic:spells/25/loop 10t append
schedule function magic:spells/26/loop 10t append

forceload add 0 0