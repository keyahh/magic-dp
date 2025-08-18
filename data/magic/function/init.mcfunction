scoreboard objectives add magic.id dummy
scoreboard objectives add magic.uiID dummy
scoreboard objectives add magic.spellID dummy
scoreboard objectives add magic.uuid dummy
scoreboard objectives add magic.targetUUID dummy

scoreboard objectives add magic.setting dummy
scoreboard players add #magicDestruction magic.setting 0

scoreboard objectives add magic.sound dummy
scoreboard objectives add magic.temp dummy
scoreboard objectives add magic.atkCD dummy
scoreboard objectives add magic.hurtCD dummy

#for enemies to input read players who finished casting spell
scoreboard objectives add magic.castTime dummy

#counts how long player holds right click with wand
scoreboard objectives add magic.castingTime dummy
scoreboard objectives add magic.spellDeflectCD dummy

scoreboard objectives add magic.iframe dummy
scoreboard objectives add magic.dmgFrame dummy
scoreboard objectives add magic.dodgeCD dummy
scoreboard objectives add magic.health dummy
scoreboard objectives add magic.stagger dummy
scoreboard objectives add magic.posture dummy

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
scoreboard objectives add magic.cloud dummy
scoreboard objectives add magic.bloodSlashSide dummy
scoreboard objectives add magic.flameTime dummy

scoreboard objectives add magic.petrify dummy
scoreboard objectives add magic.bleed dummy
scoreboard objectives add magic.burn dummy

scoreboard objectives add bezier.temp dummy
scoreboard players set #magic10 magic.temp 10
scoreboard players set #bezier2 bezier.temp 2
scoreboard players set #bezier100 bezier.temp 100

scoreboard objectives add slowcast.itt dummy
scoreboard objectives add slowcast.dist dummy
scoreboard objectives add slowcast.maxDist dummy
scoreboard objectives add slowcast.usin dummy
scoreboard objectives add slowcast.time dummy
scoreboard objectives add slowcast dummy
scoreboard players set #g/2 slowcast 40

scoreboard objectives add math dummy
scoreboard objectives add radius dummy
scoreboard objectives add maxRadius dummy
scoreboard objectives add theta dummy
scoreboard objectives add phi dummy
scoreboard objectives add maxPhi dummy
scoreboard objectives add minPhi dummy
scoreboard objectives add const dummy

scoreboard players set #4 const 4
scoreboard players set #5 const 5
scoreboard players set #10 const 10
scoreboard players set #400 const 400
scoreboard players set #1800 const 1800
scoreboard players set #3600 const 3600

forceload add 0 0
summon marker 0 0 0 {UUID:[I;2961,3204,106,81],Tags:["magic","magicClock"]}
setblock 0 -64 0 yellow_shulker_box
execute unless score #spellID magic.spellID matches -2147483646.. run scoreboard players set #spellID magic.spellID -2147483646

function magic:schedule