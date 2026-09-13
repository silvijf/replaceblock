forceload add 0 0 0 0
setblock 0 0 0 chest

scoreboard objectives add posx dummy
scoreboard objectives add posy dummy
scoreboard objectives add posz dummy
execute store result score last posx run data get entity @p Pos[0]
execute store result score last posy run data get entity @p Pos[1]
execute store result score last posz run data get entity @p Pos[2]

data modify storage replaceblock:started all.active set value true
