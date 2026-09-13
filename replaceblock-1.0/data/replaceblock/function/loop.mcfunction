execute if data storage replaceblock:started all{active:false} run return 0

data merge storage replaceblock:thistick {all:{go:false}}

execute store result score current posx run data get entity @p Pos[0]
execute store result score current posy run data get entity @p Pos[1]
execute store result score current posz run data get entity @p Pos[2]

execute unless score current posx = last posx run data merge storage replaceblock:thistick {all:{go:true}}
execute unless score current posy = last posy run data merge storage replaceblock:thistick {all:{go:true}}
execute unless score current posz = last posz run data merge storage replaceblock:thistick {all:{go:true}}

execute if data storage replaceblock:thistick all{go:false} run return 0

loot replace block 0 0 0 contents loot replaceblock:random_block
data modify storage replaceblock:block block set from block 0 0 0 Items[{Slot: 0b}].id
execute as @a at @a unless block ~ ~-1 ~ air run function replaceblock:place_block with storage replaceblock:block

scoreboard players operation last posx = current posx
scoreboard players operation last posy = current posy
scoreboard players operation last posz = current posz
