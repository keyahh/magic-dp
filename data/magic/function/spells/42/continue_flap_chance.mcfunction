execute store result score #rng magic.temp run random value 0..9
execute if score #rng magic.temp matches 0..5 run return run function animated_java:raptor/animations/flap/play
function animated_java:raptor/animations/flying_idle/play